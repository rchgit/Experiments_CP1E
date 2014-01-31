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
static const char *ng0 = "C:/Users/Reich/Documents/DLSU ACAD FOLDER/TERM 9/LBYCP1E/Experiments/t_ff_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2808647597_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 5592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3728U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4520);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5592);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3728U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4520);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2808647597_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 4768);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 3728U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 4768);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(128, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_2808647597_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;

LAB0:    t1 = (t0 + 5208U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 5656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 5656);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(137, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 5720);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(139, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 5784);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 5848);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);
    t7 = (40 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 5912);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t7 = (80 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 5976);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(147, ng0);
    t7 = (160 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 6040);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t10 = *((char **)t6);
    *((unsigned char *)t10) = t9;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(149, ng0);
    t7 = (320 * 1000LL);
    t2 = (t0 + 5016);
    xsi_process_wait(t2, t7);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    goto LAB2;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

}


extern void work_a_2808647597_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2808647597_2372691052_p_0,(void *)work_a_2808647597_2372691052_p_1,(void *)work_a_2808647597_2372691052_p_2};
	xsi_register_didat("work_a_2808647597_2372691052", "isim/t_ff_tb_isim_beh.exe.sim/work/a_2808647597_2372691052.didat");
	xsi_register_executes(pe);
}
