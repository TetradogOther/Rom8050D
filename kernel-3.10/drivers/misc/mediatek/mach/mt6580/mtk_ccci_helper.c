#define pr_fmt(fmt) "[KBUILD_MODNAME]"fmt

#include <linux/module.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/interrupt.h>
#include <linux/spinlock.h>
#include <linux/uaccess.h>
#include <linux/mm.h>
#include <linux/kfifo.h>
#include <linux/firmware.h>
#include <linux/syscalls.h>
#include <linux/uaccess.h>
#include <linux/platform_device.h>
#include <linux/proc_fs.h>
#include <asm/setup.h>
#include <asm/memblock.h>
#include <linux/kthread.h>

#include <mach/mtk_ccci_helper.h>
#include <mach/eint.h>
#include <mach/mt_gpio.h>
#include <mach/mt_reg_base.h>
#include <mach/battery_common.h>
// #include <mach/dfo_boot.h>
// #include <mach/pmic_mt6320_sw.h>
#include <mach/upmu_common.h>
#include <mach/upmu_hw.h>
#include <mach/mt_boot.h>

#ifdef CONFIG_OF
#include <linux/of.h>
#include <linux/of_fdt.h>
#include <linux/of_irq.h>
#include <linux/of_address.h>

#ifdef CONFIG_OF_RESERVED_MEM
#include <linux/of_reserved_mem.h>
#endif

#endif

#include "ccci_err_no.h"

static unsigned int ccif_irqid[MAX_MD_NUM];
static unsigned int ccif_wdt_irqid[MAX_MD_NUM];


#define CH_MSG(fmt, args...)        pr_notice("[hlp] (0)" fmt, ##args)
#define CH_MSG_INF(idx, tag, fmt, args...)    pr_notice("[" tag "] (%d)" fmt, (idx+1), ##args)
#define CH_DBG_MSG(idx, tag, fmt, args...)    pr_debug("[" tag "] (%d)" fmt, (idx+1), ##args)
#define CH_DBG_COM_MSG(fmt, args...)        pr_notice("[hlp] (0)" fmt, ##args)
#define CH_ERR(fmt, args...)        pr_err("[err] (0)" fmt, ##args)
#define CH_ERR_INF(idx, tag, fmt, args...)    pr_err("[" tag "] (%d)" fmt, (idx+1), ##args)

#ifndef __USING_DUMMY_CCCI_API__

//-------------feature enable/disable configure----------------//
//#define FEATURE_GET_TD_EINT_NUM
#if 1  // For Bring up
#define FEATURE_GET_MD_GPIO_NUM		//disable for bring up
#define FEATURE_GET_MD_GPIO_VAL		//disable for bring up
#define FEATURE_GET_MD_ADC_NUM    //disable for bring up
#define FEATURE_GET_MD_ADC_VAL		//disable for bring up
#define FEATURE_GET_MD_EINT_ATTR		//disable for bring up	
//#define FEATURE_GET_DRAM_TYPE_CLK
//#define FEATURE_MD_FAST_DORMANCY
#define FEATURE_GET_MD_BAT_VOL		//disable for bring up
#define FEATURE_PM_IPO_H          			//disable for bring up
//#define FEATURE_DFO_EN					  //Always bring up
#endif

//-------------grobal variable define----------------//
#define SHOW_WARNING_NUM (5)

#ifndef CONFIG_MD1_MEM_SIZE
    #define MD1_MEM_SIZE	(22*1024*1024)
#else
    #define MD1_MEM_SIZE CONFIG_MD1_MEM_SIZE
#endif

#ifndef CONFIG_MD1_SMEM_SIZE
    #define MD1_SMEM_SIZE	(2*1024*1024)
#else
    #define MD1_SMEM_SIZE   CONFIG_MD1_SMEM_SIZE
#endif

typedef struct _dfo_item
{
	char name[32];
	int  value;
}dfo_item_t;


#ifndef FEATURE_DFO_EN

//---------- None-DFO Begin ------------
#if defined(CONFIG_MTK_ENABLE_MD1)
// Only modem 1 enable
static dfo_item_t ccci_dfo_setting[] =
{
	#if defined(MODEM_2G)
	{"MTK_MD1_SUPPORT",	modem_2g},
	#else
	
	#ifdef CONFIG_MTK_UMTS_TDD128_MODE
	{"MTK_MD1_SUPPORT",	modem_tg},
	#else
#if defined(CONFIG_MTK_MD1_SUPPORT)
	{"MTK_MD1_SUPPORT", CONFIG_MTK_MD1_SUPPORT},
#else
    {"MTK_MD1_SUPPORT",	modem_wg},
#endif
	#endif
	
	#endif
	
	{"CONFIG_MTK_MD2_SUPPORT",	modem_tg},
	{"MD1_SMEM_SIZE",	MD1_SMEM_SIZE},
	{"MD2_SMEM_SIZE",	0},
	{"CONFIG_MTK_ENABLE_MD1",	1},
	{"CONFIG_MTK_ENABLE_MD2",	0},
	{"MD1_SIZE",		MD1_MEM_SIZE},
	{"MD2_SIZE",		0}
};
#else
// Modem 1 disable
static dfo_item_t ccci_dfo_setting[] =
{
	{"MTK_MD1_SUPPORT",	modem_wg},
	{"CONFIG_MTK_MD2_SUPPORT",	modem_tg},
	{"MD1_SMEM_SIZE",	MD1_SMEM_SIZE},
	{"MD2_SMEM_SIZE",	0},
	{"CONFIG_MTK_ENABLE_MD1",	0},
	{"CONFIG_MTK_ENABLE_MD2",	0},
	{"MD1_SIZE",		MD1_MEM_SIZE},
	{"MD2_SIZE",		0}
};

#endif

#else
//----------- ---DFO Begin ------------
static dfo_item_t ccci_dfo_setting[] =
{
	{"MTK_MD1_SUPPORT",	modem_wg},
	{"CONFIG_MTK_MD2_SUPPORT",	modem_tg},
	{"MD1_SMEM_SIZE",	0},
	{"MD2_SMEM_SIZE",	0},
	{"CONFIG_MTK_ENABLE_MD1",	0},
	{"CONFIG_MTK_ENABLE_MD2",	0},
	{"MD1_SIZE",		0},
	{"MD2_SIZE",		0}
};
#endif // FEATURE_DFO_EN

// Common for md memory setting
static unsigned int md_resv_mem_addr[MAX_MD_NUM];
static unsigned int md_resv_smem_addr[MAX_MD_NUM];
static unsigned int md_resv_smem_base;
static unsigned int md_resv_mem_size[MAX_MD_NUM];
static unsigned int md_share_mem_size[MAX_MD_NUM];
static unsigned int modem_num = 0;
static unsigned int md_usage_case = 0;
static unsigned int md_support[MAX_MD_NUM];
static unsigned int modem_size_list[MAX_MD_NUM];
static char			kern_func_err_num[MAX_MD_NUM][MAX_KERN_API];

ccci_kern_func_info		ccci_func_table[MAX_MD_NUM][MAX_KERN_API];
ccci_sys_cb_func_info_t	ccci_sys_cb_table_1000[MAX_MD_NUM][MAX_KERN_API];
ccci_sys_cb_func_info_t	ccci_sys_cb_table_100[MAX_MD_NUM][MAX_KERN_API];

int (*ccci_sys_msg_notify_func[MAX_MD_NUM])(int, unsigned int, unsigned int);


//-------------external function declaration----------------//
extern unsigned long *get_modem_start_addr_list(void);

#if defined (FEATURE_GET_MD_ADC_NUM)
extern int IMM_get_adc_channel_num(char *channel_name, int len);
#endif

#if defined (FEATURE_GET_MD_ADC_VAL)
extern int IMM_GetOneChannelValue(int dwChannel, int data[4], int* rawdata);
#endif

#if defined (FEATURE_GET_DRAM_TYPE_CLK)
extern int get_dram_info(int *clk, int *type);
#endif

#if defined (FEATURE_GET_MD_EINT_ATTR)
extern int get_eint_attribute(char *name, unsigned int name_len, unsigned int type, char * result, unsigned int *len);
#endif




/***************************************************************************/
/* API of getting md information                                                                                */
/*                                                                                                                          */
/***************************************************************************/
static int get_ccci_dfo_setting(char item[], unsigned int *val)
{
	char *ccci_name;
	int  ccci_value;
	int  i;

	for (i=0; i<(sizeof(ccci_dfo_setting)/sizeof(dfo_item_t)); i++) { // CCCI DFO feature index
		ccci_name = ccci_dfo_setting[i].name;
		ccci_value = ccci_dfo_setting[i].value;
		if(!strcmp(ccci_name, item)) {
			printk("[ccci/ctl] (0)Get DFO:%s:0x%08X\n", ccci_name, ccci_value);
			*val = (unsigned int)ccci_value;
			return 0;
		}
	}
	printk("[ccci/ctl] (0)DFO:%s not found\n", item);
	return -1;
}

static void cal_md_mem_usage(void)
{
	unsigned int tmp;
	unsigned int md1_en = 0;

	md_usage_case = 0;
	modem_num = 0;
	
	if(get_ccci_dfo_setting("CONFIG_MTK_ENABLE_MD1", &tmp) == 0) {
		if(tmp > 0) 
			md1_en = 1;
	}
	
	if(get_ccci_dfo_setting("MD1_SIZE", &tmp) == 0) {
		tmp = round_up(tmp, 0x200000);
		md_resv_mem_size[MD_SYS1] = tmp;
	}

	if(get_ccci_dfo_setting("MD1_SMEM_SIZE", &tmp) == 0) {
		tmp = round_up(tmp, 0x200000);
		md_share_mem_size[MD_SYS1] = tmp;
	}

	if(get_ccci_dfo_setting("MTK_MD1_SUPPORT", &tmp) == 0) {
		md_support[MD_SYS1] = tmp;
	}
	
	// Setting conflict checking
	if(md1_en && (md_share_mem_size[MD_SYS1]>0) && (md_resv_mem_size[MD_SYS1]>0)) {
		// Setting is OK
	} else if (md1_en && ((md_share_mem_size[MD_SYS1]<=0) || (md_resv_mem_size[MD_SYS1]<=0))) {
		printk("[ccci/ctl] (0)[Error]DFO Setting for md1 wrong: <%d:0x%08X:0x%08X>\n", 
				md1_en, md_resv_mem_size[MD_SYS1], md_share_mem_size[MD_SYS1]);
		md_share_mem_size[MD_SYS1] = MD1_SMEM_SIZE;
		md_resv_mem_size[MD_SYS1] = MD1_MEM_SIZE;
	} else {
		// Has conflict
		printk("[ccci/ctl] (0)[Error]DFO Setting for md1 conflict: <%d:0x%08X:0x%08X>\n", 
				md1_en, md_resv_mem_size[MD_SYS1], md_share_mem_size[MD_SYS1]);
		md1_en = 0;
		md_share_mem_size[MD_SYS1]=0;
		md_resv_mem_size[MD_SYS1]=0;
	}

	if(md1_en) {
		md_usage_case |= MD1_EN;
		modem_num++;
	}

	if( (md_usage_case&MD1_EN) == MD1_EN) { //Only MD1 enabled
		modem_size_list[0] = md_resv_mem_size[MD_SYS1]+md_share_mem_size[MD_SYS1];
		//modem_size_list[1] = 0;
	} else { // No MD is enabled
		modem_size_list[0] = 0;
		//modem_size_list[1] = 0;
	}

	//printk("[ccci/ctl] (0)md_num: %d, md1_size: 0x%08X\n", modem_num, modem_size_list[0]);
	
}


//get the info about how many modem is running currently
unsigned int get_nr_modem(void)
{
    // 2 additional modems (rear end)
    return 0;
    //return modem_num;
}
EXPORT_SYMBOL(get_nr_modem);


unsigned int *get_modem_size_list(void)
{
    return NULL;
    //return modem_size_list;
}
EXPORT_SYMBOL(get_modem_size_list);

//Reserve DRAM memory for MD from system
int parse_ccci_dfo_setting(void *dfo_tbl, int num);
void ccci_md_mem_reserve(void)
{
#ifndef CONFIG_OF_RESERVED_MEM
	void* ptr = NULL;

	parse_ccci_dfo_setting(NULL, 0);

	ptr = (void*)arm_memblock_steal(modem_size_list[0],SZ_32M);
	if(ptr)
	{
		md_resv_mem_addr[MD_SYS1] =(unsigned int) ptr;
		printk("[ccci/ctl] (0)md mem reserve successfully,ptr=%p,size=%d\n",ptr,modem_size_list[0]);
	}else{
		printk("[ccci/ctl] (0)md mem reserve fail.\n");
		md_resv_mem_addr[MD_SYS1] =0;
	}
#endif
}


#if defined(FEATURE_DFO_EN)

int parse_ccci_dfo_setting(void *dfo_tbl, int num)
{
	char *ccci_name;
	int  *ccci_value;
	char *tag_name;
	int  tag_value;
	int i, j;

	tag_dfo_boot *dfo_data;

	if(dfo_tbl == NULL)
		return -1;

	dfo_data = (tag_dfo_boot *)dfo_tbl;
	for (i=0; i<(sizeof(ccci_dfo_setting)/sizeof(dfo_item_t)); i++) { // CCCI DFO feature index
		ccci_name = ccci_dfo_setting[i].name;
		ccci_value = &(ccci_dfo_setting[i].value);
		for (j=0; j<num; j++) { // DFO tag index
			tag_name = dfo_data->name[j];
			tag_value = dfo_data->value[j];
			if(!strcmp(ccci_name, tag_name)) {
				*ccci_value = tag_value;
			}
		}
		printk("[ccci/ctl] (0)DFO:%s:0x%08X\n", ccci_name, *ccci_value);
	}
	cal_md_mem_usage();

	return 0;
}
#else

int parse_ccci_dfo_setting(void *dfo_data, int num)
{
	char *ccci_name;
	int   ccci_value;
	int i;

	for (i=0; i<(sizeof(ccci_dfo_setting)/sizeof(dfo_item_t)); i++) { // CCCI DFO feature index
		ccci_name = ccci_dfo_setting[i].name;
		ccci_value = ccci_dfo_setting[i].value;
		printk("[ccci/ctl] (0)DFO:%s:0x%08X\n", ccci_name, ccci_value);
	}
	
	cal_md_mem_usage();

	return 0;
}

#endif


static void collect_md_setting(void)
{
	unsigned long	*addr;
	unsigned int	md1_en;

	//addr = get_modem_start_addr_list();
	addr = (unsigned long	*)md_resv_mem_addr;

  if( (md_usage_case&MD1_EN)== MD1_EN) { //Only MD1 enabled
		md1_en = 1;
		md_resv_mem_addr[MD_SYS1] = (unsigned int)addr[0];
		md_resv_smem_addr[MD_SYS1] = (unsigned int)(addr[0] + md_resv_mem_size[MD_SYS1]);
		md_resv_smem_base = (unsigned int)addr[0];
	} else { // No MD is enabled
		md1_en = 0;
		md_resv_mem_addr[MD_SYS1] = 0;
		md_resv_smem_addr[MD_SYS1] = 0;
		md_resv_smem_base = 0;
	}

	if ( (md_resv_mem_addr[MD_SYS1]&(32*1024*1024 - 1)) != 0 )
		printk("[ccci/ctl] (0) md1 memory addr is not 32M align!!!\n");

	if ( (md_resv_smem_addr[MD_SYS1]&(2*1024*1024 - 1)) != 0 )
		printk("[ccci/ctl] (0) md1 share memory addr %08x is not 2M align!!\n", md_resv_smem_addr[MD_SYS1]);

	printk("[ccci/ctl] (0)EN(%d):MemBase(0x%08X)\n", md1_en, md_resv_smem_base);

	printk("[ccci/ctl] (0)MemStart(0x%08X):MemSize(0x%08X)\n", \
		md_resv_mem_addr[MD_SYS1], md_resv_mem_size[MD_SYS1]);

	printk("[ccci/ctl] (0)SmemStart(0x%08X):SmemSize(0x%08X)\n", \
		md_resv_smem_addr[MD_SYS1], md_share_mem_size[MD_SYS1]);
}


int parse_meta_md_setting(unsigned char args[])
{
	char md_active_setting = args[1];
	char md_setting_flag = args[0];
	int  active_id = -1;

	if(md_active_setting & MD1_SETTING_ACTIVE)
		active_id = MD_SYS1;
	else if(md_active_setting & MD2_SETTING_ACTIVE)
		active_id = MD_SYS2;

	switch(active_id){
        	case MD_SYS1:
			if(md_setting_flag&MD_WG_FLAG) {
				md_support[MD_SYS1] = modem_wg;
			} else if(md_setting_flag&MD_TG_FLAG) {
				md_support[MD_SYS1] = modem_tg;
			} else if(md_setting_flag&MD_2G_FLAG) {
				md_support[MD_SYS1] = modem_2g;
			}
			printk("[ccci/ctl] (0)Meta active id:1, md type:%d\n", md_support[MD_SYS1]);
			break;
			
		default:
			break;
	}
	return 0;	
}

unsigned int get_modem_is_enabled(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1:
			return !!(md_usage_case&MD1_EN);

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_modem_is_enabled);


unsigned int get_modem_support(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1:
			return md_support[MD_SYS1];

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_modem_support);


unsigned int set_modem_support(int md_id, int md_type)
{
	switch(md_id)
	{
	case MD_SYS1:
		if (md_type >= modem_2g && md_type <= modem_tg){
			md_support[MD_SYS1] = md_type;
		}
		else
			printk("[ccci/ctl] error: set_modem_support fail(md:%d, md_type:%d)!\n", md_id+1, md_type);
		return 0;

	default:
		return 0;
	}
}
EXPORT_SYMBOL(set_modem_support);


unsigned int get_resv_mem_size_for_md(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1:
			return md_resv_mem_size[MD_SYS1];

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_resv_mem_size_for_md);


unsigned int get_resv_share_mem_size_for_md(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1:
			return md_share_mem_size[MD_SYS1];

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_resv_share_mem_size_for_md);


unsigned int get_md_mem_start_addr(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1: 
			return md_resv_mem_addr[MD_SYS1];

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_md_mem_start_addr);

unsigned int get_md_share_mem_start_addr(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1: 
			return md_resv_smem_addr[MD_SYS1];

		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_md_share_mem_start_addr);


//unsigned int get_md_mem_base_addr(int md_id)
unsigned int get_smem_base_addr(int md_id)
{
	switch(md_id)
	{
		case MD_SYS1: 
			return md_resv_smem_base;
			
		default:
			return 0;
	}
}
EXPORT_SYMBOL(get_smem_base_addr);


void get_md_post_fix(int md_id, char buf[], char buf_ex[])
{
	// modem_X_YY_K_[Ex].img
	int		X;
	char		YY_K[8];
	int		Ex = 0;	

	unsigned int	feature_val = 0;

	// X
	X = md_id+1;

	// YY_K
	YY_K[0] = '\0';
	switch(md_id)
	{
	case MD_SYS1:
		feature_val = md_support[MD_SYS1];
		break;

	default:
		break;
	}
	
	switch(feature_val)
	{
		case modem_2g:
			snprintf(YY_K, 8, "_2g_n");
			break;
			
		case modem_3g:
			snprintf(YY_K, 8, "_3g_n");
			break;
			
		case modem_wg:
			snprintf(YY_K, 8, "_wg_n");
			break;
			
		case modem_tg:
			snprintf(YY_K, 8, "_tg_n");
			break;			
			
		default:
			break;
	}

	// [_Ex] Get chip version
	//if(get_chip_version() == CHIP_SW_VER_01)
		Ex = 1;
	//else if(get_chip_version() == CHIP_SW_VER_02)
		//Ex = 2;

	// Gen post fix
	if(buf)
		snprintf(buf, 12, "%d%s", X, YY_K);

	if(buf_ex)
		snprintf(buf_ex, 12, "%d%s_E%d", X, YY_K, Ex);
}
EXPORT_SYMBOL(get_md_post_fix);


/***************************************************************************/
/* provide API called by ccci module                                                                           */
/*                                                                                                                          */
/***************************************************************************/
AP_IMG_TYPE get_ap_img_ver(void)
{
	#if defined(MODEM_2G)
	return AP_IMG_2G;
	#elif  defined(MODEM_3G)
	return AP_IMG_3G;
	#else
	return AP_IMG_INVALID;
	#endif
}
EXPORT_SYMBOL(get_ap_img_ver);


int get_td_eint_info(int md_id, char * eint_name, unsigned int len)
{
	#if defined (FEATURE_GET_TD_EINT_NUM)
	return get_td_eint_num(eint_name, len);
	
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_td_eint_info);
	
	
int get_md_gpio_info(int md_id, char *gpio_name, unsigned int len)
{
	#if defined (FEATURE_GET_MD_GPIO_NUM)
	return mt_get_md_gpio(gpio_name, len);
	
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_md_gpio_info);


int get_md_gpio_val(int md_id, unsigned int num)
{
	#if defined (FEATURE_GET_MD_GPIO_VAL)
	return mt_get_gpio_in(num);
	
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_md_gpio_val);


int get_md_adc_info(int md_id, char *adc_name, unsigned int len)
{
	#if defined (FEATURE_GET_MD_ADC_NUM)
	return IMM_get_adc_channel_num(adc_name, len);
	
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_md_adc_info);


int get_md_adc_val(int md_id, unsigned int num)
{
	int data[4] = {0,0,0,0};
	int val = 0;
	int ret = 0;
	
	#if defined (FEATURE_GET_MD_ADC_VAL)
	ret = IMM_GetOneChannelValue(num, data, &val);
	if (ret == 0)
		return val;
	else
		return ret;
	
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_md_adc_val);


int get_eint_attr(char *name, unsigned int name_len, unsigned int type, char * result, unsigned int *len)
{
	#if defined (FEATURE_GET_MD_EINT_ATTR)
	return get_eint_attribute(name, name_len, type, result, len);

	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_eint_attr);

	
int get_dram_type_clk(int *clk, int *type)
{
	#if defined (FEATURE_GET_DRAM_TYPE_CLK)
	return get_dram_info(clk, type);
	#else
	return -1;
	#endif
}
EXPORT_SYMBOL(get_dram_type_clk);


void md_fast_dormancy(int md_id)
{
	#if defined (FEATURE_MD_FAST_DORMANCY)
	#ifdef CONFIG_MTK_FD_SUPPORT	
	exec_ccci_kern_func_by_md_id(md_id, ID_CCCI_DORMANCY, NULL, 0);
	#endif
	#endif
}
EXPORT_SYMBOL(md_fast_dormancy);


int get_bat_info(unsigned int para)
{
	#if defined (FEATURE_GET_MD_BAT_VOL)
	return (int)BAT_Get_Battery_Voltage(0);
	#endif
}
EXPORT_SYMBOL(get_bat_info);



/***************************************************************************/
/* Make sysfs node helper function section                                                                  */
/*                                                                                                                          */
/***************************************************************************/
ssize_t mtk_ccci_attr_show(struct kobject *kobj, struct attribute *attr, char *buffer);
ssize_t mtk_ccci_attr_store(struct kobject *kobj, struct attribute *attr, const char *buffer, size_t size);
ssize_t mtk_ccci_filter_show(struct kobject *kobj, char *page);
ssize_t mtk_ccci_filter_store(struct kobject *kobj, const char *page, size_t size);

struct sysfs_ops mtk_ccci_sysfs_ops = {
	.show   = mtk_ccci_attr_show,
	.store  = mtk_ccci_attr_store,
};

struct mtk_ccci_sys_entry {
	struct attribute attr;
	ssize_t (*show)(struct kobject *kobj, char *page);
	ssize_t (*store)(struct kobject *kobj, const char *page, size_t size);
};

static struct mtk_ccci_sys_entry filter_setting_entry = {
	{ .name = "filter",  .mode = S_IRUGO | S_IWUSR },
	mtk_ccci_filter_show,
	mtk_ccci_filter_store,
};

struct attribute *mtk_ccci_attributes[] = {
	&filter_setting_entry.attr,
	NULL,
};

struct kobj_type mtk_ccci_ktype = {
	.sysfs_ops = &mtk_ccci_sysfs_ops,
	.default_attrs = mtk_ccci_attributes,
};

static struct mtk_ccci_sysobj {
	struct kobject kobj;
} ccci_sysobj;


static int mtk_ccci_sysfs(void) 
{
	struct mtk_ccci_sysobj *obj = &ccci_sysobj;

	memset(&obj->kobj, 0x00, sizeof(obj->kobj));

	obj->kobj.parent = kernel_kobj;
	if (kobject_init_and_add(&obj->kobj, &mtk_ccci_ktype, NULL, "ccci")) {
		kobject_put(&obj->kobj);
		return -ENOMEM;
	}
	kobject_uevent(&obj->kobj, KOBJ_ADD);

	return 0;
}

ssize_t mtk_ccci_attr_show(struct kobject *kobj, struct attribute *attr, char *buffer) 
{
	struct mtk_ccci_sys_entry *entry = container_of(attr, struct mtk_ccci_sys_entry, attr);
	return entry->show(kobj, buffer);
}

ssize_t mtk_ccci_attr_store(struct kobject *kobj, struct attribute *attr, const char *buffer, size_t size) 
{
	struct mtk_ccci_sys_entry *entry = container_of(attr, struct mtk_ccci_sys_entry, attr);
	return entry->store(kobj, buffer, size);
}

//----------------------------------------------------------//
// Filter table                                                         
//----------------------------------------------------------//
cmd_op_map_t cmd_map_table[MAX_FILTER_MEMBER] = {{"",0}, {"",0}, {"",0}, {"",0}};

ssize_t mtk_ccci_filter_show(struct kobject *kobj, char *buffer) 
{
	int i;
	int remain = PAGE_SIZE;
	unsigned long len;
	char *ptr = buffer;

	for(i=0; i<MAX_FILTER_MEMBER; i++){
		if( cmd_map_table[i].cmd_len !=0 ){
			// Find a mapped cmd
			if(NULL != cmd_map_table[i].show){
				len = cmd_map_table[i].show(ptr, remain);
				ptr += len;
        			remain -= len;
        		}
		}
	}

	return (PAGE_SIZE-remain);
}

ssize_t mtk_ccci_filter_store(struct kobject *kobj, const char *buffer, size_t size) 
{
	int i;

	for(i=0; i<MAX_FILTER_MEMBER; i++){
		if( strncmp(buffer, cmd_map_table[i].cmd, cmd_map_table[i].cmd_len)==0 ){
			// Find a mapped cmd
			if(NULL != cmd_map_table[i].store){
				return cmd_map_table[i].store((char*)buffer, size);
			}
		}
	}
	printk("[ccci/ctl] (0)unsupport cmd\n");
	return size;
}

int register_filter_func(char cmd[], ccci_filter_cb_func_t store, ccci_filter_cb_func_t show)
{
	int i;
	int empty_slot = -1;
	int cmd_len;
	
	for(i=0; i<MAX_FILTER_MEMBER; i++){
		if( 0 == cmd_map_table[i].cmd_len ){
			// Find a empty slot
			if(-1 == empty_slot)
				empty_slot = i;
		}else if( strcmp(cmd, cmd_map_table[i].cmd)==0 ){
			// Find a duplicate cmd
			return -1;
		}
	}
	if( -1 != empty_slot){
		cmd_len = strlen(cmd);
		if(cmd_len > 7){
			return -2;
		}

		cmd_map_table[empty_slot].cmd_len = cmd_len;
		for(i=0; i<cmd_len; i++)
			cmd_map_table[empty_slot].cmd[i] = cmd[i];
		cmd_map_table[empty_slot].cmd[i] = 0; // termio char
		cmd_map_table[empty_slot].store = store;
		cmd_map_table[empty_slot].show = show;
		return 0;
	}
	return -3;
}
EXPORT_SYMBOL(register_filter_func);



/***************************************************************************/
/* Register kernel API for ccci driver invoking                                                               */
/*                                                                                                                          */
/***************************************************************************/
int register_ccci_kern_func_by_md_id(int md_id, unsigned int id, ccci_kern_cb_func_t func)
{
	int ret = 0;
	ccci_kern_func_info *info_ptr;
	
	if((id >= MAX_KERN_API) || (func == NULL) || (md_id >= MAX_MD_NUM)) {
		printk("[ccci/ctl] (0)register kern func fail: md_id:%d, func_id:%d!\n", md_id+1, id);
		return E_PARAM;
	}

	info_ptr = &(ccci_func_table[md_id][id]);
	if(info_ptr->func == NULL) {
		info_ptr->id = id;
		info_ptr->func = func;
	}
	else
		printk("[ccci/ctl] (%d)register kern func fail: func(%d) registered!\n", md_id+1, id);

	return ret;
}
EXPORT_SYMBOL(register_ccci_kern_func_by_md_id);


int register_ccci_kern_func(unsigned int id, ccci_kern_cb_func_t func)
{
	return register_ccci_kern_func_by_md_id(CURR_MD_ID, id, func);
}
EXPORT_SYMBOL(register_ccci_kern_func);


int exec_ccci_kern_func_by_md_id(int md_id, unsigned int id, char *buf, unsigned int len)
{
	ccci_kern_cb_func_t func;
	int ret = 0;
	
	if(md_id >= MAX_MD_NUM) {
		printk("[ccci/ctl] (0)exec kern func fail: invalid md id(%d)\n", md_id+1);
		return E_PARAM;
	}
	
	if(id >= MAX_KERN_API) {
		printk("[ccci/ctl] (%d)exec kern func fail: invalid func id(%d)!\n", md_id, id);
		return E_PARAM;
	}
	
	func = ccci_func_table[md_id][id].func;
	if(func != NULL) {
		ret = func(md_id, buf, len);
	}
	else {
		ret = E_NO_EXIST;
		if(kern_func_err_num[md_id][id] < SHOW_WARNING_NUM) {
			kern_func_err_num[md_id][id]++;
			printk("[ccci/ctl] (%d)exec kern func fail: func%d not register!\n", md_id+1, id);
		}
	}

	return ret;
}
EXPORT_SYMBOL(exec_ccci_kern_func_by_md_id);


int exec_ccci_kern_func(unsigned int id, char *buf, unsigned int len)
{
	return exec_ccci_kern_func_by_md_id(CURR_MD_ID, id, buf, len);
}
EXPORT_SYMBOL(exec_ccci_kern_func);



/***************************************************************************/
/* Register ccci call back function when AP receive system channel message                    */
/*                                                                                                                          */
/***************************************************************************/
int register_sys_msg_notify_func(int md_id, int (*func)(int, unsigned int, unsigned int))
{
	int ret = 0;
	
	if( md_id >= MAX_MD_NUM ) {
		printk("[ccci/ctl] (0)register_sys_msg_notify_func fail: invalid md id(%d)\n", md_id+1);
		return E_PARAM;
	}

	if(ccci_sys_msg_notify_func[md_id] == NULL) {
		ccci_sys_msg_notify_func[md_id] = func;
	} else {
		printk("[ccci/ctl] (%d)ccci_sys_msg_notify_func fail: func registered!\n", md_id+1);
	}

	return ret;
}
EXPORT_SYMBOL(register_sys_msg_notify_func);


int notify_md_by_sys_msg(int md_id, unsigned int msg, unsigned int data)
{
	int ret = 0;
	int (*func)(int, unsigned int, unsigned int);
	
	if(md_id >= MAX_MD_NUM) {
		printk("[ccci/ctl] (0)notify_md_by_sys_msg: invalid md id(%d)\n", md_id+1);
		return E_PARAM;
	}

	func = ccci_sys_msg_notify_func[md_id];
	if(func != NULL) {
		ret = func(md_id, msg, data);
	} else {
		ret = E_NO_EXIST;
		printk("[ccci/ctl] (%d)notify_md_by_sys_msg fail: func not register!\n", md_id+1);
	}

	return ret;
}
EXPORT_SYMBOL(notify_md_by_sys_msg);


int register_ccci_sys_call_back(int md_id, unsigned int id, ccci_sys_cb_func_t func)
{
	int ret = 0;
	ccci_sys_cb_func_info_t *info_ptr;
	
	if( md_id >= MAX_MD_NUM ) {
		printk("[ccci/ctl] (0)register_sys_call_back fail: invalid md id(%d)\n", md_id+1);
		return E_PARAM;
	}

	if((id >= 0x100)&&((id-0x100) < MAX_KERN_API)) {
		info_ptr = &(ccci_sys_cb_table_100[md_id][id-0x100]);
	} else if((id >= 0x1000)&&((id-0x1000) < MAX_KERN_API)) {
		info_ptr = &(ccci_sys_cb_table_1000[md_id][id-0x1000]);
	} else {
		printk("[ccci/ctl] (%d)register_sys_call_back fail: invalid func id(0x%x)\n", md_id+1, id);
		return E_PARAM;
	}
	
	if(info_ptr->func == NULL) {
		info_ptr->id = id;
		info_ptr->func = func;
	}
	else
		printk("[ccci/ctl] (%d)register_sys_call_back fail: func(0x%x) registered!\n", md_id+1, id);

	return ret;
}
EXPORT_SYMBOL(register_ccci_sys_call_back);


void exec_ccci_sys_call_back(int md_id, int cb_id, int data)
{
	ccci_sys_cb_func_t func;
	int	id;
	ccci_sys_cb_func_info_t	*curr_table;
	
	if(md_id >= MAX_MD_NUM) {
		printk("[ccci/ctl] (0)exec_sys_cb fail: invalid md id(%d) \n", md_id+1);
		return;
	}

	id = cb_id & 0xFF;
	if(id >= MAX_KERN_API) {
		printk("[ccci/ctl] (%d)exec_sys_cb fail: invalid func id(0x%x)\n",  md_id+1, cb_id);
		return;
	}

	if ((cb_id & (0x1000|0x100))==0x1000) {
		curr_table = ccci_sys_cb_table_1000[md_id];
	} else if ((cb_id & (0x1000|0x100))==0x100) {
		curr_table = ccci_sys_cb_table_100[md_id];
	} else {
		printk("[ccci/ctl] (%d)exec_sys_cb fail: invalid func id(0x%x)\n",  md_id+1, cb_id);
		return;
	}
	
	func = curr_table[id].func;
	if(func != NULL) {
		func(md_id, data);
	} else {
		printk("[ccci/ctl] (%d)exec_sys_cb fail: func id(0x%x) not register!\n", md_id+1, cb_id);
	}
}
EXPORT_SYMBOL(exec_ccci_sys_call_back);



/***************************************************************************/
/* Register ccci suspend & resume function                                                                 */
/*                                                                                                                          */
/***************************************************************************/
typedef struct ccci_pm_cb_item
{
	void (*cb_func)(int);
	int		md_id;
}ccci_pm_cb_item_t;
	
	
static ccci_pm_cb_item_t suspend_cb_table[MAX_MD_NUM][MAX_SLEEP_API];
static ccci_pm_cb_item_t resume_cb_table[MAX_MD_NUM][MAX_SLEEP_API];


void register_suspend_notify(int md_id, unsigned int id, void (*func)(int))
{
	if((id >= MAX_SLEEP_API) || (func == NULL) || (md_id >= MAX_MD_NUM)) {
		printk("[ccci/ctl] (0)invalid suspend parameter(md:%d, cmd:%d)!\n", md_id, id);
	}
	
	if (suspend_cb_table[md_id][id].cb_func == NULL){
		suspend_cb_table[md_id][id].cb_func = func;
		suspend_cb_table[md_id][id].md_id = md_id;
	}
}
EXPORT_SYMBOL(register_suspend_notify);

	
void register_resume_notify(int md_id, unsigned int id, void (*func)(int))
{
	if((id >= MAX_SLEEP_API) || (func == NULL) || (md_id >= MAX_MD_NUM)) {
		printk("[ccci/ctl] (0)invalid resume parameter(md:%d, cmd:%d)!\n", md_id, id);
	}
	
	if (resume_cb_table[md_id][id].cb_func == NULL){
		resume_cb_table[md_id][id].cb_func = func;
		resume_cb_table[md_id][id].md_id = md_id;
	}
}
EXPORT_SYMBOL(register_resume_notify);


static int ccci_helper_probe(struct platform_device *dev)
{
    return 0;
}

static int ccci_helper_remove(struct platform_device *dev)
{
	return 0;
}

static void ccci_helper_shutdown(struct platform_device *dev)
{

}

static int ccci_helper_suspend(struct platform_device *dev, pm_message_t state)
{
	int		i, j;
	void	(*func)(int);
	int		md_id;

	printk( "\nccci_helper_suspend\n" );

	for (i = 0; i < MAX_MD_NUM; i++) {
		for (j = 0; j < SLP_ID_MAX; j++) {
			func = suspend_cb_table[i][j].cb_func;
			md_id = suspend_cb_table[i][j].md_id;
			if(func != NULL)
				func(md_id);
		}
	}
	
	return 0;
}

static int ccci_helper_resume(struct platform_device *dev)
{
	int		i,j;
	void	(*func)(int);
	int		md_id;

	printk( "\nccci_helper_resume\n" );

	for (i = 0; i < MAX_MD_NUM; i++) {
		for (j = 0; j < RSM_ID_MAX; j++) {
			func = resume_cb_table[i][j].cb_func;
			md_id = resume_cb_table[i][j].md_id;
			if(func != NULL)
				func(md_id);
		}
	}
	
	return 0;
}


//*-------------------------------------------------------------*//
#if defined (CONFIG_PM) && defined (FEATURE_PM_IPO_H)
int ccci_helper_pm_suspend(struct device *device)
{
    //pr_debug("calling %s()\n", __func__);

    struct platform_device *pdev = to_platform_device(device);
    BUG_ON(pdev == NULL);

    return ccci_helper_suspend(pdev, PMSG_SUSPEND);
}

int ccci_helper_pm_resume(struct device *device)
{
    //pr_debug("calling %s()\n", __func__);

    struct platform_device *pdev = to_platform_device(device);
    BUG_ON(pdev == NULL);

    return ccci_helper_resume(pdev);
}

extern void mt_irq_set_sens(unsigned int irq, unsigned int sens);
extern void mt_irq_set_polarity(unsigned int irq, unsigned int polarity);
int ccci_helper_pm_restore_noirq(struct device *device)
{
    unsigned int ccif0_irq = 0;
    unsigned int md_wdt_irq = 0;

    pr_notice("calling %s()\n", __func__);
#ifdef CONFIG_OF
    ccif0_irq = ccif_irqid[0];;
    md_wdt_irq = ccif_wdt_irqid[0];
#else
    ccif0_irq = CCIF0_AP_IRQ_ID;
    md_wdt_irq = MD_WDT_IRQ_ID;
#endif

    // CCIF AP0
    mt_irq_set_sens(ccif0_irq, MT_LEVEL_SENSITIVE);
    mt_irq_set_polarity(ccif0_irq, MT_POLARITY_LOW);

    // MD1 WDT
    mt_irq_set_sens(md_wdt_irq, MT_EDGE_SENSITIVE);
    mt_irq_set_polarity(md_wdt_irq, MT_POLARITY_LOW);

    // MD1
    exec_ccci_kern_func_by_md_id(0, ID_IPO_H_RESTORE_CB, NULL, 0);

    return 0;

}

#else /*CONFIG_PM*/

#define ccci_helper_pm_suspend NULL
#define ccci_helper_pm_resume  NULL
#define ccci_helper_pm_restore_noirq NULL

#endif /*CONFIG_PM*/
//*-------------------------------------------------------------*//

struct dev_pm_ops ccci_helper_pm_ops = {
    .suspend = ccci_helper_pm_suspend,
    .resume = ccci_helper_pm_resume,
    .freeze = ccci_helper_pm_suspend,
    .thaw = ccci_helper_pm_resume,
    .poweroff = ccci_helper_pm_suspend,
    .restore = ccci_helper_pm_resume,
    .restore_noirq = ccci_helper_pm_restore_noirq,
};

static struct platform_driver ccci_helper_driver =
{
	.driver     = {
		.name	= "ccci-helper",
#ifdef CONFIG_PM
        .pm     = &ccci_helper_pm_ops,
#endif
	},
	.probe		= ccci_helper_probe,
	.remove		= ccci_helper_remove,
	.shutdown	= ccci_helper_shutdown,
	.suspend	= ccci_helper_suspend,
	.resume		= ccci_helper_resume,
};

#ifdef CONFIG_OF
static const struct of_device_id ccif_of_ids[] = {
    {.compatible = "mediatek,AP_CCIF0", },
    {}
};
#endif

struct platform_device ccci_helper_device = {
	.name		= "ccci-helper",
	.id		= 0,
	.dev		= {}
};

#ifdef CONFIG_OF_RESERVED_MEM
#define CCCI_MD1_MEM_RESERVED_KEY "reserve-memory-ccci_md1"
#define CCCI_MD2_MEM_RESERVED_KEY "reserve-memory-ccci_md2"
#include <mach/mtk_memcfg.h>
int ccci_reserve_mem_of_init(struct reserved_mem * rmem, unsigned long node, const char * uname)
{
    phys_addr_t rptr = 0;
    unsigned int rsize= 0;
    int md_id = -1;
    rptr = rmem->base;
    rsize= (unsigned int)rmem->size;	
    if(strcmp(uname, CCCI_MD1_MEM_RESERVED_KEY) == 0){
        md_id = MD_SYS1;
    }
    if(strcmp(uname, CCCI_MD2_MEM_RESERVED_KEY) == 0){
        md_id = MD_SYS2;
    }
    if(md_id < 0){
        CH_ERR("memory reserve key %s not support\n", uname);  
        return 0;
    }
    CH_MSG_INF(md_id, "hlp", "reserve_mem_of_init, rptr=0x%pa, rsize=0x%x\n", &rptr, rsize);
    // md_resv_mem_list[md_id] = rptr;    // ROM + RAM + SMEM
    md_resv_mem_addr[md_id] = (unsigned int)rptr;    // ROM + RAM + SMEM
    modem_size_list[md_id]= rsize;     // maybe 24M (22 + 2)
    md_usage_case |= (1<<md_id);

    return 0;
}
RESERVEDMEM_OF_DECLARE(ccci_reserve_mem_md1_init,CCCI_MD1_MEM_RESERVED_KEY,ccci_reserve_mem_of_init);
RESERVEDMEM_OF_DECLARE(ccci_reserve_mem_md2_init,CCCI_MD2_MEM_RESERVED_KEY,ccci_reserve_mem_of_init);
#endif

typedef struct fos_item  // Feature Option Setting
{
	char         *name;
	volatile int value;
}fos_item_t;

#ifdef  CONFIG_MTK_ENABLE_MD1
#define MTK_MD1_EN	(1)
#else
#define MTK_MD1_EN	(0)
#endif

#ifdef CONFIG_MTK_MD1_SUPPORT
#define MTK_MD1_SUPPORT	(CONFIG_MTK_MD1_SUPPORT)
#else
#define MTK_MD1_SUPPORT	(5)
#endif

// MD2
#ifdef  CONFIG_MTK_ENABLE_MD2
#define MTK_MD2_EN	(1)
#else
#define MTK_MD2_EN	(0)
#endif

#ifdef CONFIG_MTK_MD2_SUPPORT
#define MTK_MD2_SUPPORT	(CONFIG_MTK_MD2_SUPPORT)
#else
#define MTK_MD2_SUPPORT	(1)
#endif

// MD3
#ifdef  CONFIG_MTK_ENABLE_MD3
#define MTK_MD3_EN	(1)
#else
#define MTK_MD3_EN	(0)
#endif

#ifdef CONFIG_MTK_MD3_SUPPORT
#define MTK_MD3_SUPPORT	(CONFIG_MTK_MD3_SUPPORT)
#else
#define MTK_MD3_SUPPORT	(3)
#endif

// MD5
#ifdef  CONFIG_MTK_ENABLE_MD5
#define MTK_MD5_EN	(1)
#else
#define MTK_MD5_EN	(0)
#endif
#ifdef CONFIG_MTK_MD5_SUPPORT
#define MTK_MD5_SUPPORT	(CONFIG_MTK_MD5_SUPPORT)
#else
#define MTK_MD5_SUPPORT	(3)
#endif


//#define FEATURE_DFO_EN
static fos_item_t ccci_fos_default_setting[] =
{
	{"MTK_ENABLE_MD1",	MTK_MD1_EN},
	{"MTK_MD1_SUPPORT", MTK_MD1_SUPPORT},
	{"MTK_ENABLE_MD2",	MTK_MD2_EN},
	{"MTK_MD2_SUPPORT", MTK_MD2_SUPPORT},
	{"MTK_ENABLE_MD1",	MTK_MD3_EN},
	{"MTK_MD3_SUPPORT", MTK_MD3_SUPPORT},
	{"MTK_ENABLE_MD5",	MTK_MD5_EN},
	{"MTK_MD5_SUPPORT", MTK_MD5_SUPPORT},
};

int ccci_get_fo_setting(char item[], unsigned int *val)
{
	char *ccci_name;
	int  ccci_value;
	int  i;

	for (i=0; i<ARRAY_SIZE(ccci_fos_default_setting); i++) {
		ccci_name = ccci_fos_default_setting[i].name;
		ccci_value = ccci_fos_default_setting[i].value;
		if(!strcmp(ccci_name, item)) {
			CH_MSG("FO:%s -> %08x\n", item, ccci_value);
			*val = (unsigned int)ccci_value;
			return 0;
		}
	}
	CH_MSG("FO:%s not found\n", item);
	return -CCCI_ERR_INVALID_PARAM;
}

unsigned int get_md_smem_align(int md_id)
{
	return 0x200000;
}


static void cal_md_settings(int md_id)
{
    unsigned int tmp;
    unsigned int md_en = 0;
    char tmp_buf[30];
    char* node_name = NULL;
    struct device_node *node=NULL;

    snprintf(tmp_buf,sizeof(tmp_buf),"MTK_ENABLE_MD%d",(md_id+1));
    // MTK_ENABLE_MD*
    if(ccci_get_fo_setting(tmp_buf, &tmp) == 0) {
        if(tmp > 0)
            md_en = 1;
    }
    if(!(md_en && (md_usage_case&(1<<md_id)))){
        CH_ERR_INF(md_id, "hlp", "md%d is disabled\n", (md_id+1));
        return;
    }
    // MTK_MD*_SUPPORT
    snprintf(tmp_buf,sizeof(tmp_buf), "MTK_MD%d_SUPPORT", (md_id+1));
    if(ccci_get_fo_setting(tmp_buf, &tmp) == 0) {
        md_support[md_id] = tmp;
    }
    // MD*_SMEM_SIZE
    if(md_id==MD_SYS1){
        node_name = "mediatek,AP_CCIF0";
    }else if(md_id==MD_SYS2){
        node_name= "mediatek,AP_CCIF1";
    }else{
        CH_ERR_INF(md_id, "hlp", "md%d id is not supported,need to check\n", (md_id+1));
        md_usage_case &= ~(1<<md_id);
        return;
    }
    node = of_find_compatible_node(NULL, NULL, node_name);
    if(node){
        of_property_read_u32(node, "md_smem_size", &md_share_mem_size[md_id]);
    }else{
        CH_ERR_INF(md_id, "hlp", "md%d smem size is not set in device tree,need to check\n", (md_id+1));
        md_usage_case &= ~(1<<md_id);
        return;
    }

    ccif_irqid[md_id] = irq_of_parse_and_map(node, 0);
    ccif_wdt_irqid[md_id] = irq_of_parse_and_map(node, 1);

    // MD ROM start address should be 32M align as remap hardware limitation
    // md_resv_mem_addr[md_id] = md_resv_mem_list[md_id];
    /*
     * for legacy CCCI: make share memory start address to be 2MB align, as share 
     * memory size is 2MB - requested by MD MPU.
     * for ECCCI: ROM+RAM size will be align to 1M, and share memory is 2K,
     * 1M alignment is also 2K alignment.
     */	
    md_resv_mem_size[md_id]= round_up(modem_size_list[md_id] - md_share_mem_size[md_id], get_md_smem_align(md_id));
    md_resv_smem_addr[md_id] = md_resv_mem_addr[md_id] + md_resv_mem_size[md_id];
    CH_MSG_INF(md_id, "hlp", "md%d modem_total_size=0x%x,md_size=0x%x, smem_size=0x%x\n",(md_id+1)
    	, modem_size_list[md_id],md_resv_mem_size[md_id],md_share_mem_size[md_id]);	
    if ((md_usage_case&(1<<md_id)) && ((md_resv_mem_addr[md_id]&(CCCI_MEM_ALIGN - 1)) != 0))
    	CH_MSG_INF(md_id, "hlp", "md%d memory addr is not 32M align!!!\n", (md_id+1));

    if ((md_usage_case&(1<<md_id)) && ((md_resv_smem_addr[md_id]&(CCCI_SMEM_ALIGN_MD1 - 1)) != 0))
    	CH_MSG_INF(md_id, "hlp", "md%d share memory addr %pa is not 0x%x align!!\n", (md_id+1), &md_resv_smem_addr[md_id], CCCI_SMEM_ALIGN_MD1);

    CH_MSG_INF(md_id, "hlp", "MemStart: 0x%pa, MemSize:0x%08X\n",&md_resv_mem_addr[md_id], md_resv_mem_size[md_id]);
    CH_MSG_INF(md_id, "hlp", "SMemStart: 0x%pa, SMemSize:0x%08X\n",&md_resv_smem_addr[md_id], md_share_mem_size[md_id]);
}


static int __init ccci_helper_init(void)
{
    int ret;
    int idx = 0;

    parse_ccci_dfo_setting(NULL, 0);

    for (idx = 0; idx < MAX_MD_NUM; idx++) {
        cal_md_settings(idx);
    }

    collect_md_setting();

    // Init ccci helper sys fs
    memset( (void*)cmd_map_table, 0, sizeof(cmd_map_table) );
    mtk_ccci_sysfs();

    // init ccci kernel API register table
    memset((void*)ccci_func_table, 0, sizeof(ccci_func_table));
    memset((void*)kern_func_err_num, 0, sizeof(kern_func_err_num));

    // init ccci system channel call back function register table
    memset((void*)ccci_sys_cb_table_100, 0, sizeof(ccci_sys_cb_table_100));
    memset((void*)ccci_sys_cb_table_1000, 0, sizeof(ccci_sys_cb_table_1000));

    ret = platform_device_register(&ccci_helper_device);
    if (ret) {
	    printk("[ccci/ctl] (0)ccci_helper_device register fail(%d)\n", ret);
	    return ret;
    }

#ifdef CONFIG_OF
	ccci_helper_driver.driver.of_match_table = ccif_of_ids;
#endif

    ret = platform_driver_register(&ccci_helper_driver);
    if (ret) {
	    printk("[ccci/ctl] (0)ccci_helper_driver register fail(%d)\n", ret);
	    return ret;
    }

    return 0;
}


void ccci_helper_exit(void)
{
	printk("[ccci/ctl] (0)ccci_helper_exit\n");

	// free ccci helper sys fs
	memset((void*)cmd_map_table, 0, sizeof(cmd_map_table));

	// free ccci kernel API register table
	memset((void*)ccci_func_table, 0, sizeof(ccci_func_table));
	memset((void*)ccci_sys_msg_notify_func, 0, sizeof(ccci_sys_msg_notify_func));

	// free ccci system channel call back function register table
	memset((void*)ccci_sys_cb_table_100, 0, sizeof(ccci_sys_cb_table_100));
	memset((void*)ccci_sys_cb_table_1000, 0, sizeof(ccci_sys_cb_table_1000));

	//free suspend/resume function table
	memset((void*)suspend_cb_table, 0, sizeof(suspend_cb_table));
	memset((void*)resume_cb_table, 0, sizeof(resume_cb_table));

}
EXPORT_SYMBOL(ccci_helper_exit);


module_init(ccci_helper_init);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("MTK");
MODULE_DESCRIPTION("The ccci helper function");

#else
unsigned int modem_size_list[1] = {0};
unsigned int get_nr_modem(void)
{
    return 0;
}

unsigned int *get_modem_size_list(void)
{
    return modem_size_list;
}
int parse_ccci_dfo_setting(void *dfo_tbl, int num)
{
	return 0;
}

int parse_meta_md_setting(unsigned char args[])
{
	return 0;
}

unsigned int get_modem_is_enabled(int md_id)
{
	return 0;
}

unsigned int get_modem_support(int md_id)
{
	return 0;
}

unsigned int set_modem_support(int md_id, int md_type)
{
	return 0;
}


int register_ccci_kern_func(unsigned int id, ccci_kern_cb_func_t func)
{
	return -1;
}

int register_ccci_kern_func_by_md_id(int md_id, unsigned int id, ccci_kern_cb_func_t func)
{
	return -1;
}

int exec_ccci_kern_func(unsigned int id, char *buf, unsigned int len)
{
	return -1;
}

int exec_ccci_kern_func_by_md_id(int md_id, unsigned int id, char *buf, unsigned int len)
{
	return -1;
}

int register_ccci_sys_call_back(int md_id, unsigned int id, ccci_sys_cb_func_t func)
{
	return -1;
}

void exec_ccci_sys_call_back(int md_id, int cb_id, int data)
{
}

void ccci_helper_exit(void)
{
}
void ccci_md_mem_reserve(void)
{
}

#endif

