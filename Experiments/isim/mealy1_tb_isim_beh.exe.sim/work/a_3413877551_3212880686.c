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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP1E/Experiments/mealy1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3413877551_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4504);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4376);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3413877551_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4568);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 4568);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t3);
    goto LAB6;

}

static void work_a_3413877551_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB39;

LAB40:
LAB3:    t1 = (t0 + 4408);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t6 = (t4 == (unsigned char)3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4632);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4632);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t12 = (t7 == (unsigned char)2);
    t3 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t12 = (t7 == (unsigned char)2);
    if (t12 == 1)
        goto LAB18;

LAB19:    t6 = (unsigned char)0;

LAB20:    if (t6 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t6 = (t4 == (unsigned char)3);
    if (t6 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB16:    goto LAB3;

LAB15:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 4632);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB18:    t1 = (t0 + 2152U);
    t8 = *((char **)t1);
    t13 = *((unsigned char *)t8);
    t14 = (t13 <= (unsigned char)3);
    t6 = t14;
    goto LAB20;

LAB21:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4632);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB16;

LAB23:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t12 = (t7 <= (unsigned char)3);
    t3 = t12;
    goto LAB25;

LAB26:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t12 = (t7 == (unsigned char)3);
    if (t12 == 1)
        goto LAB31;

LAB32:    t6 = (unsigned char)0;

LAB33:    if (t6 != 0)
        goto LAB28;

LAB30:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t6 = (t4 == (unsigned char)2);
    if (t6 == 1)
        goto LAB36;

LAB37:    t3 = (unsigned char)0;

LAB38:    if (t3 != 0)
        goto LAB34;

LAB35:
LAB29:    goto LAB3;

LAB28:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4632);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB31:    t1 = (t0 + 2152U);
    t8 = *((char **)t1);
    t13 = *((unsigned char *)t8);
    t14 = (t13 <= (unsigned char)2);
    t6 = t14;
    goto LAB33;

LAB34:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 4632);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB29;

LAB36:    t1 = (t0 + 2152U);
    t5 = *((char **)t1);
    t7 = *((unsigned char *)t5);
    t12 = (t7 <= (unsigned char)3);
    t3 = t12;
    goto LAB38;

LAB39:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4632);
    t5 = (t1 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3413877551_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;

LAB0:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)0);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB15:
LAB3:    t1 = (t0 + 4424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 4696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 4696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB12;

LAB13:
LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4696);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB12:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB14:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4696);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}


extern void work_a_3413877551_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3413877551_3212880686_p_0,(void *)work_a_3413877551_3212880686_p_1,(void *)work_a_3413877551_3212880686_p_2,(void *)work_a_3413877551_3212880686_p_3};
	xsi_register_didat("work_a_3413877551_3212880686", "isim/mealy1_tb_isim_beh.exe.sim/work/a_3413877551_3212880686.didat");
	xsi_register_executes(pe);
}
