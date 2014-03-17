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
    work_m_00000000002286387759_1411866052_init();
    work_m_00000000002448298083_1413487373_init();
    work_m_00000000003778393026_1710705532_init();
    work_m_00000000001244872639_0362659827_init();
    work_m_00000000001498077320_2444293644_init();
    work_m_00000000000719883503_1565616744_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000719883503_1565616744");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
