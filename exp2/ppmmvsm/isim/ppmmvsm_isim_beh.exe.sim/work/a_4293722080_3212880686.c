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
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_4293722080_3212880686_p_0(char *t0)
{
    char t17[16];
    char t20[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t18;
    unsigned char t19;
    char *t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(664, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1120U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3668);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(665, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3760);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(667, ng0);
    t2 = (t0 + 1788U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB15;

LAB16:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1144U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(668, ng0);
    t2 = (t0 + 1696U);
    t7 = *((char **)t2);
    t15 = *((unsigned char *)t7);
    t2 = (t0 + 1604U);
    t8 = *((char **)t2);
    t16 = *((unsigned char *)t8);
    t9 = ((IEEE_P_2592010699) + 2332);
    t2 = xsi_base_array_concat(t2, t17, t9, (char)99, t15, (char)99, t16, (char)101);
    t10 = (t0 + 1512U);
    t18 = *((char **)t10);
    t19 = *((unsigned char *)t18);
    t21 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t20, t21, (char)97, t2, t17, (char)99, t19, (char)101);
    t22 = (t0 + 1420U);
    t23 = *((char **)t22);
    t24 = *((unsigned char *)t23);
    t26 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t25, t26, (char)97, t10, t20, (char)99, t24, (char)101);
    t27 = (1U + 1U);
    t28 = (t27 + 1U);
    t29 = (t28 + 1U);
    t30 = (4U != t29);
    if (t30 == 1)
        goto LAB13;

LAB14:    t31 = (t0 + 3760);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    memcpy(t35, t22, 4U);
    xsi_driver_first_trans_fast(t31);
    goto LAB11;

LAB13:    xsi_size_not_matching(4U, t29, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(670, ng0);
    t1 = (t0 + 1880U);
    t5 = *((char **)t1);
    t1 = (t0 + 6404U);
    t6 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t5, t1, 1);
    t7 = (t17 + 12U);
    t27 = *((unsigned int *)t7);
    t28 = (1U * t27);
    t11 = (4U != t28);
    if (t11 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 3760);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t18 = (t10 + 40U);
    t21 = *((char **)t18);
    memcpy(t21, t6, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB11;

LAB17:    xsi_size_not_matching(4U, t28, 0);
    goto LAB18;

}

static void work_a_4293722080_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(675, ng0);
    t1 = (t0 + 1328U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t9 = (t0 + 1880U);
    t10 = *((char **)t9);
    t9 = (t0 + 6404U);
    t11 = (t0 + 2052U);
    t12 = *((char **)t11);
    t11 = (t0 + 6420U);
    t13 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t10, t9, t12, t11);
    if (t13 != 0)
        goto LAB5;

LAB6:
LAB7:    t19 = (t0 + 3796);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 40U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 3676);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3796);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    t14 = (t0 + 3796);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_4293722080_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(677, ng0);
    t2 = (t0 + 1880U);
    t3 = *((char **)t2);
    t2 = (t0 + 6404U);
    t4 = (t0 + 2052U);
    t5 = *((char **)t4);
    t4 = (t0 + 6420U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t15 = (t0 + 3832);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 3684);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 3832);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    t7 = (t0 + 1236U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t1 = t10;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4293722080_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(679, ng0);

LAB3:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3868);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3692);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4293722080_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(680, ng0);

LAB3:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t3 = (2 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3904);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3700);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4293722080_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(681, ng0);

LAB3:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t3 = (1 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3940);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3708);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4293722080_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(682, ng0);

LAB3:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 3976);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3716);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4293722080_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4293722080_3212880686_p_0,(void *)work_a_4293722080_3212880686_p_1,(void *)work_a_4293722080_3212880686_p_2,(void *)work_a_4293722080_3212880686_p_3,(void *)work_a_4293722080_3212880686_p_4,(void *)work_a_4293722080_3212880686_p_5,(void *)work_a_4293722080_3212880686_p_6};
	xsi_register_didat("work_a_4293722080_3212880686", "isim/ppmmvsm_isim_beh.exe.sim/work/a_4293722080_3212880686.didat");
	xsi_register_executes(pe);
}
