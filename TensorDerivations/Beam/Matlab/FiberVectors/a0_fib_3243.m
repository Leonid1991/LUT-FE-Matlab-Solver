function a0_fib = a0_fib_3243(in1,in2,in3,in4,L,H,W,xi,eta,zeta)
%A0_FIB_3243
%    A0_FIB = A0_FIB_3243(IN1,IN2,IN3,IN4,L,H,W,XI,ETA,ZETA)

%    This function was generated by the Symbolic Math Toolbox version 24.2.
%    21-May-2025 16:46:19

Phi1 = in4(1,:);
Phi2 = in4(2,:);
a01 = in1(1,:);
a02 = in1(2,:);
a03 = in1(3,:);
phi1 = in3(1,:);
phi2 = in3(2,:);
q0pos1 = in2(1,:);
q0pos2 = in2(2,:);
q0pos3 = in2(3,:);
q0pos4 = in2(7,:);
q0pos5 = in2(8,:);
q0pos6 = in2(9,:);
q0x1 = in2(4,:);
q0x2 = in2(5,:);
q0x3 = in2(6,:);
q0x4 = in2(10,:);
q0x5 = in2(11,:);
q0x6 = in2(12,:);
t2 = abs(L);
t3 = L.*q0x1;
t4 = L.*q0x2;
t5 = L.*q0x3;
t6 = L.*q0x4;
t7 = L.*q0x5;
t8 = L.*q0x6;
t9 = Phi1+phi1;
t10 = Phi2+phi2;
t11 = q0pos1.*6.0;
t12 = q0pos2.*6.0;
t13 = q0pos3.*6.0;
t14 = q0pos4.*6.0;
t15 = q0pos5.*6.0;
t16 = q0pos6.*6.0;
t17 = xi+1.0;
t18 = xi.^2;
t19 = 1.0./H;
t20 = 1.0./L;
t21 = 1.0./W;
t25 = xi-1.0;
t22 = -t14;
t23 = -t15;
t24 = -t16;
t26 = 1.0./t2.^2;
t27 = t3.*xi.*2.0;
t28 = t4.*xi.*2.0;
t29 = t5.*xi.*2.0;
t30 = t6.*xi.*2.0;
t31 = t7.*xi.*2.0;
t32 = t8.*xi.*2.0;
t42 = q0pos1.*t18.*-6.0;
t43 = q0pos2.*t18.*-6.0;
t44 = q0pos3.*t18.*-6.0;
t45 = t3.*t18.*3.0;
t46 = t4.*t18.*3.0;
t47 = t5.*t18.*3.0;
t48 = t6.*t18.*3.0;
t49 = t7.*t18.*3.0;
t50 = t8.*t18.*3.0;
t57 = (t9.*pi)./1.8e+2;
t58 = (t10.*pi)./1.8e+2;
t33 = -t30;
t34 = -t31;
t35 = -t32;
t51 = -t45;
t52 = -t46;
t53 = -t47;
t54 = -t48;
t55 = -t49;
t56 = -t50;
t59 = cos(t57);
t60 = cos(t58);
t61 = sin(t57);
t62 = sin(t58);
t63 = H.*eta.*t59.*2.0;
t64 = H.*eta.*t60.*2.0;
t65 = H.*eta.*t61.*2.0;
t66 = H.*eta.*t62.*2.0;
t67 = W.*t59.*zeta.*2.0;
t68 = W.*t60.*zeta.*2.0;
t69 = W.*t61.*zeta.*2.0;
t70 = W.*t62.*zeta.*2.0;
t75 = (H.*t17.*t60)./4.0;
t76 = (W.*t17.*t60)./4.0;
t77 = (H.*t17.*t62)./4.0;
t78 = (W.*t17.*t62)./4.0;
t79 = (H.*t25.*t59)./4.0;
t81 = (W.*t25.*t59)./4.0;
t83 = (H.*t25.*t61)./4.0;
t85 = (W.*t25.*t61)./4.0;
t97 = a01.*(t3+t6+t11+t22+t27+t33+t42+t51+t54+q0pos4.*t18.*6.0);
t71 = -t64;
t72 = -t66;
t73 = -t68;
t74 = -t69;
t91 = a02.*t19.*(t75-t79).*-2.0;
t92 = a02.*t19.*(t77-t83).*-2.0;
t93 = a03.*t21.*(t76-t81).*-2.0;
t95 = a03.*t21.*(t78-t85).*2.0;
t98 = abs(t97);
t99 = t98.^2;
t103 = (a01.*t20.*(t4+t7+t12+t23+t28+t34+t43+t52+t55+t63+t70+t71+t74+q0pos5.*t18.*6.0))./4.0;
t104 = (a01.*t20.*(t5+t8+t13+t24+t29+t35+t44+t53+t56+t65+t67+t72+t73+q0pos6.*t18.*6.0))./4.0;
t100 = (t26.*t99)./1.6e+1;
t105 = t92+t93+t104;
t106 = t91+t95+t103;
t107 = abs(t105);
t108 = abs(t106);
t109 = t107.^2;
t110 = t108.^2;
t111 = t100+t109+t110;
t112 = 1.0./sqrt(t111);
a0_fib = [t20.*t97.*t112.*(-1.0./4.0);-t106.*t112;t112.*(-t104+a02.*t19.*(t77-t83).*2.0+a03.*t21.*(t76-t81).*2.0)];
end
