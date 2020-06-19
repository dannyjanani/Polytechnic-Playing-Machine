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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//CSE001-WFP/home$/zgr206/CS2204/exp2/ppmmvsm/ppmmvsm.vhf";



static void work_a_1747069025_0070918936_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned char t16;
    char *t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    unsigned char t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(328, ng0);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 1052U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t9 = (t6 == t8);
    if (t9 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB14:    t29 = (t0 + 2228);
    t30 = (t29 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 40U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 2184);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t4 = (t0 + 2228);
    t25 = (t4 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB5:    t4 = (t0 + 960U);
    t20 = *((char **)t4);
    t21 = *((unsigned char *)t20);
    t4 = (t0 + 1328U);
    t22 = *((char **)t4);
    t23 = *((unsigned char *)t22);
    t24 = (t21 == t23);
    t1 = t24;
    goto LAB7;

LAB8:    t4 = (t0 + 868U);
    t15 = *((char **)t4);
    t16 = *((unsigned char *)t15);
    t4 = (t0 + 1236U);
    t17 = *((char **)t4);
    t18 = *((unsigned char *)t17);
    t19 = (t16 == t18);
    t2 = t19;
    goto LAB10;

LAB11:    t4 = (t0 + 776U);
    t10 = *((char **)t4);
    t11 = *((unsigned char *)t10);
    t4 = (t0 + 1144U);
    t12 = *((char **)t4);
    t13 = *((unsigned char *)t12);
    t14 = (t11 == t13);
    t3 = t14;
    goto LAB13;

LAB15:    goto LAB2;

}


extern void work_a_1747069025_0070918936_init()
{
	static char *pe[] = {(void *)work_a_1747069025_0070918936_p_0};
	xsi_register_didat("work_a_1747069025_0070918936", "isim/ppmmvsm_isim_beh.exe.sim/work/a_1747069025_0070918936.didat");
	xsi_register_executes(pe);
}
