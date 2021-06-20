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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001738776762_0759364728_init();
    work_m_00000000001232180254_0272542448_init();
    work_m_00000000000141619495_1741863702_init();
    work_m_00000000000786526215_3552387463_init();
    work_m_00000000001191231871_1559120873_init();
    work_m_00000000002098189895_1290501460_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002098189895_1290501460");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
