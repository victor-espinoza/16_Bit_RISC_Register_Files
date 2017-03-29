/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Victor Espinoza/Desktop/CECS 301/Lab 5 - Register Files/RegisterFiles/Source Code/decoder_3_to_8.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {8U, 0U};
static unsigned int ng7[] = {16U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {32U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {64U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {128U, 0U};



static void Always_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    t1 = (t0 + 3648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t2, 3, 0, 1);
    t14 = (t0 + 2088);
    xsi_vlogvar_assign_value(t14, t2, 4, 0, 1);
    t15 = (t0 + 1928);
    xsi_vlogvar_assign_value(t15, t2, 5, 0, 1);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t2, 6, 0, 1);
    t17 = (t0 + 1608);
    xsi_vlogvar_assign_value(t17, t2, 7, 0, 1);

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(33, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);

LAB8:    t11 = ((char*)((ng1)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t11, 3);
    if (t13 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng2)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t13 = xsi_vlog_unsigned_case_compare(t12, 3, t2, 3);
    if (t13 == 1)
        goto LAB23;

LAB24:
LAB26:
LAB25:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    t4 = (t0 + 2568);
    xsi_vlogvar_assign_value(t4, t2, 1, 0, 1);
    t5 = (t0 + 2408);
    xsi_vlogvar_assign_value(t5, t2, 2, 0, 1);
    t11 = (t0 + 2248);
    xsi_vlogvar_assign_value(t11, t2, 3, 0, 1);
    t14 = (t0 + 2088);
    xsi_vlogvar_assign_value(t14, t2, 4, 0, 1);
    t15 = (t0 + 1928);
    xsi_vlogvar_assign_value(t15, t2, 5, 0, 1);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t2, 6, 0, 1);
    t17 = (t0 + 1608);
    xsi_vlogvar_assign_value(t17, t2, 7, 0, 1);

LAB27:    goto LAB7;

LAB9:    xsi_set_current_line(34, ng0);
    t14 = ((char*)((ng2)));
    t15 = (t0 + 2728);
    xsi_vlogvar_assign_value(t15, t14, 0, 0, 1);
    t16 = (t0 + 2568);
    xsi_vlogvar_assign_value(t16, t14, 1, 0, 1);
    t17 = (t0 + 2408);
    xsi_vlogvar_assign_value(t17, t14, 2, 0, 1);
    t18 = (t0 + 2248);
    xsi_vlogvar_assign_value(t18, t14, 3, 0, 1);
    t19 = (t0 + 2088);
    xsi_vlogvar_assign_value(t19, t14, 4, 0, 1);
    t20 = (t0 + 1928);
    xsi_vlogvar_assign_value(t20, t14, 5, 0, 1);
    t21 = (t0 + 1768);
    xsi_vlogvar_assign_value(t21, t14, 6, 0, 1);
    t22 = (t0 + 1608);
    xsi_vlogvar_assign_value(t22, t14, 7, 0, 1);
    goto LAB27;

LAB11:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB13:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB15:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB17:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB19:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB21:    xsi_set_current_line(40, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

LAB23:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 2728);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t3, 1, 0, 1);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t3, 2, 0, 1);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t3, 3, 0, 1);
    t15 = (t0 + 2088);
    xsi_vlogvar_assign_value(t15, t3, 4, 0, 1);
    t16 = (t0 + 1928);
    xsi_vlogvar_assign_value(t16, t3, 5, 0, 1);
    t17 = (t0 + 1768);
    xsi_vlogvar_assign_value(t17, t3, 6, 0, 1);
    t18 = (t0 + 1608);
    xsi_vlogvar_assign_value(t18, t3, 7, 0, 1);
    goto LAB27;

}


extern void work_m_00000000001098580904_2929516641_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000001098580904_2929516641", "isim/register_file_tb_isim_beh.exe.sim/work/m_00000000001098580904_2929516641.didat");
	xsi_register_executes(pe);
}
