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
static const char *ng0 = "C:/Users/Zachary/Documents/GitHub/CSE320-Project-1/project-1-zach/full_adder.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Always_56_0(char *t0)
{
    char t6[8];
    char t18[8];
    char t25[8];
    char t31[8];
    char t48[8];
    char t55[8];
    char t70[8];
    char t131[8];
    char t140[8];
    char t147[8];
    char t179[8];
    char t208[8];
    char t216[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    unsigned int t78;
    int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    int t96;
    int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    char *t129;
    char *t130;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t141;
    char *t142;
    char *t143;
    char *t144;
    char *t145;
    char *t146;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    char *t152;
    char *t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    int t171;
    int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    char *t184;
    char *t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    char *t207;
    char *t209;
    char *t210;
    char *t211;
    char *t212;
    char *t213;
    char *t214;
    char *t215;
    char *t217;
    unsigned int t218;
    int t219;

LAB0:    t1 = (t0 + 3784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4104);
    *((int *)t2) = 1;
    t3 = (t0 + 3816);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);

LAB5:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1504U);
    t5 = *((char **)t4);
    t4 = (t0 + 2704);
    t7 = (t0 + 2704);
    t8 = (t7 + 72U);
    t9 = *((char **)t8);
    t10 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t6, t9, 2, t10, 32, 1);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (!(t12));
    if (t13 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(58, ng0);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t3, 32, t2, 32);
    t4 = (t0 + 2864);
    xsi_vlogvar_assign_value(t4, t6, 0, 0, 32);

LAB8:    t2 = (t0 + 2864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_signed_greatereq(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t12 = *((unsigned int *)t7);
    t14 = (~(t12));
    t15 = *((unsigned int *)t6);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2704);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t14 = (t12 >> 4);
    t15 = (t14 & 1);
    *((unsigned int *)t6) = t15;
    t16 = *((unsigned int *)t7);
    t17 = (t16 >> 4);
    t32 = (t17 & 1);
    *((unsigned int *)t5) = t32;
    t8 = (t0 + 2064);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 1);
    goto LAB2;

LAB6:    xsi_vlogvar_assign_value(t4, t5, 0, *((unsigned int *)t6), 1);
    goto LAB7;

LAB9:    xsi_set_current_line(58, ng0);

LAB11:    xsi_set_current_line(59, ng0);
    t8 = (t0 + 3592);
    xsi_process_wait(t8, 4000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(59, ng0);
    t9 = (t0 + 1184U);
    t10 = *((char **)t9);
    t9 = (t0 + 1144U);
    t11 = (t9 + 72U);
    t19 = *((char **)t11);
    t20 = (t0 + 2864);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    xsi_vlog_generic_get_index_select_value(t18, 1, t10, t19, 2, t22, 32, 1);
    t23 = (t0 + 1344U);
    t24 = *((char **)t23);
    t23 = (t0 + 1304U);
    t26 = (t23 + 72U);
    t27 = *((char **)t26);
    t28 = (t0 + 2864);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_index_select_value(t25, 1, t24, t27, 2, t30, 32, 1);
    t32 = *((unsigned int *)t18);
    t33 = *((unsigned int *)t25);
    t34 = (t32 ^ t33);
    *((unsigned int *)t31) = t34;
    t35 = (t18 + 4);
    t36 = (t25 + 4);
    t37 = (t31 + 4);
    t38 = *((unsigned int *)t35);
    t39 = *((unsigned int *)t36);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = *((unsigned int *)t37);
    t42 = (t41 != 0);
    if (t42 == 1)
        goto LAB13;

LAB14:
LAB15:    t45 = (t0 + 2704);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t49 = (t0 + 2704);
    t50 = (t49 + 72U);
    t51 = *((char **)t50);
    t52 = (t0 + 2864);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    xsi_vlog_generic_get_index_select_value(t48, 1, t47, t51, 2, t54, 32, 1);
    t56 = *((unsigned int *)t31);
    t57 = *((unsigned int *)t48);
    t58 = (t56 ^ t57);
    *((unsigned int *)t55) = t58;
    t59 = (t31 + 4);
    t60 = (t48 + 4);
    t61 = (t55 + 4);
    t62 = *((unsigned int *)t59);
    t63 = *((unsigned int *)t60);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = *((unsigned int *)t61);
    t66 = (t65 != 0);
    if (t66 == 1)
        goto LAB16;

LAB17:
LAB18:    t69 = (t0 + 1904);
    t71 = (t0 + 1904);
    t72 = (t71 + 72U);
    t73 = *((char **)t72);
    t74 = (t0 + 2864);
    t75 = (t74 + 56U);
    t76 = *((char **)t75);
    xsi_vlog_generic_convert_bit_index(t70, t73, 2, t76, 32, 1);
    t77 = (t70 + 4);
    t78 = *((unsigned int *)t77);
    t13 = (!(t78));
    if (t13 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3592);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB13:    t43 = *((unsigned int *)t31);
    t44 = *((unsigned int *)t37);
    *((unsigned int *)t31) = (t43 | t44);
    goto LAB15;

LAB16:    t67 = *((unsigned int *)t55);
    t68 = *((unsigned int *)t61);
    *((unsigned int *)t55) = (t67 | t68);
    goto LAB18;

LAB19:    xsi_vlogvar_assign_value(t69, t55, 0, *((unsigned int *)t70), 1);
    goto LAB20;

LAB21:    xsi_set_current_line(60, ng0);
    t3 = (t0 + 1184U);
    t4 = *((char **)t3);
    t3 = (t0 + 1144U);
    t5 = (t3 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 2864);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    xsi_vlog_generic_get_index_select_value(t6, 1, t4, t7, 2, t10, 32, 1);
    t11 = (t0 + 1344U);
    t19 = *((char **)t11);
    t11 = (t0 + 1304U);
    t20 = (t11 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2864);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_get_index_select_value(t18, 1, t19, t21, 2, t24, 32, 1);
    t12 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t18);
    t15 = (t12 & t14);
    *((unsigned int *)t25) = t15;
    t26 = (t6 + 4);
    t27 = (t18 + 4);
    t28 = (t25 + 4);
    t16 = *((unsigned int *)t26);
    t17 = *((unsigned int *)t27);
    t32 = (t16 | t17);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t28);
    t34 = (t33 != 0);
    if (t34 == 1)
        goto LAB22;

LAB23:
LAB24:    t35 = (t0 + 1184U);
    t36 = *((char **)t35);
    t35 = (t0 + 1144U);
    t37 = (t35 + 72U);
    t45 = *((char **)t37);
    t46 = (t0 + 2864);
    t47 = (t46 + 56U);
    t49 = *((char **)t47);
    xsi_vlog_generic_get_index_select_value(t31, 1, t36, t45, 2, t49, 32, 1);
    t50 = (t0 + 2704);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t0 + 2704);
    t54 = (t53 + 72U);
    t59 = *((char **)t54);
    t60 = (t0 + 2864);
    t61 = (t60 + 56U);
    t69 = *((char **)t61);
    xsi_vlog_generic_get_index_select_value(t48, 1, t52, t59, 2, t69, 32, 1);
    t68 = *((unsigned int *)t31);
    t78 = *((unsigned int *)t48);
    t80 = (t68 & t78);
    *((unsigned int *)t55) = t80;
    t71 = (t31 + 4);
    t72 = (t48 + 4);
    t73 = (t55 + 4);
    t81 = *((unsigned int *)t71);
    t82 = *((unsigned int *)t72);
    t83 = (t81 | t82);
    *((unsigned int *)t73) = t83;
    t84 = *((unsigned int *)t73);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB25;

LAB26:
LAB27:    t104 = *((unsigned int *)t25);
    t105 = *((unsigned int *)t55);
    t106 = (t104 | t105);
    *((unsigned int *)t70) = t106;
    t76 = (t25 + 4);
    t77 = (t55 + 4);
    t107 = (t70 + 4);
    t108 = *((unsigned int *)t76);
    t109 = *((unsigned int *)t77);
    t110 = (t108 | t109);
    *((unsigned int *)t107) = t110;
    t111 = *((unsigned int *)t107);
    t112 = (t111 != 0);
    if (t112 == 1)
        goto LAB28;

LAB29:
LAB30:    t129 = (t0 + 1344U);
    t130 = *((char **)t129);
    t129 = (t0 + 1304U);
    t132 = (t129 + 72U);
    t133 = *((char **)t132);
    t134 = (t0 + 2864);
    t135 = (t134 + 56U);
    t136 = *((char **)t135);
    xsi_vlog_generic_get_index_select_value(t131, 1, t130, t133, 2, t136, 32, 1);
    t137 = (t0 + 2704);
    t138 = (t137 + 56U);
    t139 = *((char **)t138);
    t141 = (t0 + 2704);
    t142 = (t141 + 72U);
    t143 = *((char **)t142);
    t144 = (t0 + 2864);
    t145 = (t144 + 56U);
    t146 = *((char **)t145);
    xsi_vlog_generic_get_index_select_value(t140, 1, t139, t143, 2, t146, 32, 1);
    t148 = *((unsigned int *)t131);
    t149 = *((unsigned int *)t140);
    t150 = (t148 & t149);
    *((unsigned int *)t147) = t150;
    t151 = (t131 + 4);
    t152 = (t140 + 4);
    t153 = (t147 + 4);
    t154 = *((unsigned int *)t151);
    t155 = *((unsigned int *)t152);
    t156 = (t154 | t155);
    *((unsigned int *)t153) = t156;
    t157 = *((unsigned int *)t153);
    t158 = (t157 != 0);
    if (t158 == 1)
        goto LAB31;

LAB32:
LAB33:    t180 = *((unsigned int *)t70);
    t181 = *((unsigned int *)t147);
    t182 = (t180 | t181);
    *((unsigned int *)t179) = t182;
    t183 = (t70 + 4);
    t184 = (t147 + 4);
    t185 = (t179 + 4);
    t186 = *((unsigned int *)t183);
    t187 = *((unsigned int *)t184);
    t188 = (t186 | t187);
    *((unsigned int *)t185) = t188;
    t189 = *((unsigned int *)t185);
    t190 = (t189 != 0);
    if (t190 == 1)
        goto LAB34;

LAB35:
LAB36:    t207 = (t0 + 2704);
    t209 = (t0 + 2704);
    t210 = (t209 + 72U);
    t211 = *((char **)t210);
    t212 = (t0 + 2864);
    t213 = (t212 + 56U);
    t214 = *((char **)t213);
    t215 = ((char*)((ng2)));
    memset(t216, 0, 8);
    xsi_vlog_signed_add(t216, 32, t214, 32, t215, 32);
    xsi_vlog_generic_convert_bit_index(t208, t211, 2, t216, 32, 1);
    t217 = (t208 + 4);
    t218 = *((unsigned int *)t217);
    t219 = (!(t218));
    if (t219 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_minus(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2864);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB8;

LAB22:    t38 = *((unsigned int *)t25);
    t39 = *((unsigned int *)t28);
    *((unsigned int *)t25) = (t38 | t39);
    t29 = (t6 + 4);
    t30 = (t18 + 4);
    t40 = *((unsigned int *)t6);
    t41 = (~(t40));
    t42 = *((unsigned int *)t29);
    t43 = (~(t42));
    t44 = *((unsigned int *)t18);
    t56 = (~(t44));
    t57 = *((unsigned int *)t30);
    t58 = (~(t57));
    t13 = (t41 & t43);
    t79 = (t56 & t58);
    t62 = (~(t13));
    t63 = (~(t79));
    t64 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t64 & t62);
    t65 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t65 & t63);
    t66 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t66 & t62);
    t67 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t67 & t63);
    goto LAB24;

LAB25:    t86 = *((unsigned int *)t55);
    t87 = *((unsigned int *)t73);
    *((unsigned int *)t55) = (t86 | t87);
    t74 = (t31 + 4);
    t75 = (t48 + 4);
    t88 = *((unsigned int *)t31);
    t89 = (~(t88));
    t90 = *((unsigned int *)t74);
    t91 = (~(t90));
    t92 = *((unsigned int *)t48);
    t93 = (~(t92));
    t94 = *((unsigned int *)t75);
    t95 = (~(t94));
    t96 = (t89 & t91);
    t97 = (t93 & t95);
    t98 = (~(t96));
    t99 = (~(t97));
    t100 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t100 & t98);
    t101 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t101 & t99);
    t102 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t102 & t98);
    t103 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t103 & t99);
    goto LAB27;

LAB28:    t113 = *((unsigned int *)t70);
    t114 = *((unsigned int *)t107);
    *((unsigned int *)t70) = (t113 | t114);
    t115 = (t25 + 4);
    t116 = (t55 + 4);
    t117 = *((unsigned int *)t115);
    t118 = (~(t117));
    t119 = *((unsigned int *)t25);
    t120 = (t119 & t118);
    t121 = *((unsigned int *)t116);
    t122 = (~(t121));
    t123 = *((unsigned int *)t55);
    t124 = (t123 & t122);
    t125 = (~(t120));
    t126 = (~(t124));
    t127 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t127 & t125);
    t128 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t128 & t126);
    goto LAB30;

LAB31:    t159 = *((unsigned int *)t147);
    t160 = *((unsigned int *)t153);
    *((unsigned int *)t147) = (t159 | t160);
    t161 = (t131 + 4);
    t162 = (t140 + 4);
    t163 = *((unsigned int *)t131);
    t164 = (~(t163));
    t165 = *((unsigned int *)t161);
    t166 = (~(t165));
    t167 = *((unsigned int *)t140);
    t168 = (~(t167));
    t169 = *((unsigned int *)t162);
    t170 = (~(t169));
    t171 = (t164 & t166);
    t172 = (t168 & t170);
    t173 = (~(t171));
    t174 = (~(t172));
    t175 = *((unsigned int *)t153);
    *((unsigned int *)t153) = (t175 & t173);
    t176 = *((unsigned int *)t153);
    *((unsigned int *)t153) = (t176 & t174);
    t177 = *((unsigned int *)t147);
    *((unsigned int *)t147) = (t177 & t173);
    t178 = *((unsigned int *)t147);
    *((unsigned int *)t147) = (t178 & t174);
    goto LAB33;

LAB34:    t191 = *((unsigned int *)t179);
    t192 = *((unsigned int *)t185);
    *((unsigned int *)t179) = (t191 | t192);
    t193 = (t70 + 4);
    t194 = (t147 + 4);
    t195 = *((unsigned int *)t193);
    t196 = (~(t195));
    t197 = *((unsigned int *)t70);
    t198 = (t197 & t196);
    t199 = *((unsigned int *)t194);
    t200 = (~(t199));
    t201 = *((unsigned int *)t147);
    t202 = (t201 & t200);
    t203 = (~(t198));
    t204 = (~(t202));
    t205 = *((unsigned int *)t185);
    *((unsigned int *)t185) = (t205 & t203);
    t206 = *((unsigned int *)t185);
    *((unsigned int *)t185) = (t206 & t204);
    goto LAB36;

LAB37:    xsi_vlogvar_assign_value(t207, t179, 0, *((unsigned int *)t208), 1);
    goto LAB38;

}


extern void work_m_00000000002498888031_0494805701_init()
{
	static char *pe[] = {(void *)Always_56_0};
	xsi_register_didat("work_m_00000000002498888031_0494805701", "isim/n_tb_isim_beh.exe.sim/work/m_00000000002498888031_0494805701.didat");
	xsi_register_executes(pe);
}
