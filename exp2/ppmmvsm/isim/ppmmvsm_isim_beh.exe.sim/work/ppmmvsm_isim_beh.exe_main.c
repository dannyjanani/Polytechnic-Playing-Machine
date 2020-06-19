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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_2717149903;
char *STD_TEXTIO;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_2952178788_1492584465_init();
    unisim_a_3870564484_3219970547_init();
    unisim_a_1525108159_2393828108_init();
    unisim_a_1490675510_1976025627_init();
    unisim_a_0275842832_2627455975_init();
    unisim_a_3762448000_2971575191_init();
    unisim_a_2211589156_2274105955_init();
    work_a_0513652565_3212880686_init();
    unisim_a_3988446151_0546328132_init();
    unisim_a_2782630213_1361109519_init();
    work_a_1810412797_3212880686_init();
    unisim_a_2312877582_0635394241_init();
    unisim_a_0118100819_2639897040_init();
    unisim_a_2661327437_0605893366_init();
    work_a_1742395596_3407682449_init();
    unisim_a_3055263662_1392679692_init();
    work_a_0087242614_3212880686_init();
    unisim_a_1801614988_1818890047_init();
    work_a_2341295226_3212880686_init();
    unisim_a_2216889161_3025253650_init();
    work_a_1811217175_3212880686_init();
    unisim_a_2472025866_3046367013_init();
    work_a_3012339150_3212880686_init();
    unisim_a_1717296735_4086321779_init();
    unisim_a_2867636556_1359619727_init();
    work_a_0054894248_3212880686_init();
    work_a_3378544211_3212880686_init();
    work_a_3973884433_3212880686_init();
    unisim_a_0822023423_2138884434_init();
    unisim_a_3541572365_2138884434_init();
    unisim_a_3237256837_2138884434_init();
    unisim_a_2768149990_2138884434_init();
    unisim_a_0008336579_2138884434_init();
    unisim_a_4089391294_2138884434_init();
    unisim_a_3591723134_2138884434_init();
    unisim_a_2562466605_1496654361_init();
    work_a_1572561708_3212880686_init();
    work_a_2876064013_3958118228_init();
    work_a_1382642733_3212880686_init();
    work_a_4269928014_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_2798332096_3212880686_init();
    work_a_2430321589_3212880686_init();
    unisim_a_2988077518_2751630626_init();
    unisim_a_4147737283_2967259552_init();
    unisim_a_2472646025_1397528790_init();
    work_a_4293722080_3212880686_init();
    work_a_0266012331_3988484263_init();
    work_a_2256457815_3212880686_init();
    work_a_0492252105_3212880686_init();
    work_a_1904307227_2581942369_init();
    work_a_1972131501_3212880686_init();
    work_a_3535997223_1553249677_init();
    work_a_1976629054_3212880686_init();
    work_a_0746757746_3212880686_init();
    unisim_a_3367287988_0361848851_init();
    unisim_a_0680745308_3966425309_init();
    work_a_3197408774_3212880686_init();
    work_a_0691966012_3212880686_init();
    work_a_1174059332_0109885370_init();
    work_a_1950179925_3943959265_init();
    work_a_1747069025_0070918936_init();
    work_a_2454478856_3863324637_init();
    work_a_2224674566_0626907643_init();
    work_a_0955540204_1481163407_init();
    unisim_a_1667989146_2551625557_init();
    unisim_a_3126493194_3781969094_init();
    unisim_a_2211953871_3811244703_init();
    unisim_a_2216329674_1385100001_init();
    work_a_1909670100_0698689932_init();
    work_a_2135260873_0251052001_init();
    unisim_a_1947232985_2580864354_init();
    unisim_a_1391413833_1848422758_init();
    work_a_1395592778_3314862492_init();
    work_a_3983432820_3212880686_init();


    xsi_register_tops("work_a_3983432820_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}
