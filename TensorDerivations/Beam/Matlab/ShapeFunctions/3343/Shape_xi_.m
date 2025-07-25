function Nm_xi_xi = Shape_xi_(L,H,W,xi,eta,zeta)
%Shape_xi_
%    Nm_xi_xi = Shape_xi_(L,H,W,XI,ETA,ZETA)

%    This function was generated by the Symbolic Math Toolbox version 24.2.
%    04-Jun-2025 20:13:57

t2 = xi.*2.0;
t3 = xi+1.0;
t4 = H.*eta.*xi;
t5 = W.*xi.*zeta;
t7 = xi-1.0;
t8 = xi+1.0./2.0;
t11 = xi-1.0./2.0;
t6 = -t2;
t9 = -t4;
t10 = -t5;
t12 = t4./4.0;
t13 = t5./4.0;
t14 = (W.*t3.*zeta)./4.0;
t15 = (W.*t4.*zeta)./2.0;
t16 = (H.*eta.*t3)./4.0;
t17 = (W.*t7.*zeta)./4.0;
t19 = (W.*t4.*zeta)./8.0;
t20 = (H.*eta.*t7)./4.0;
t21 = (H.*W.*eta.*t3.*zeta)./8.0;
t22 = (H.*W.*eta.*t7.*zeta)./8.0;
t18 = -t15;
t23 = t13+t14;
t24 = t12+t16;
t25 = t13+t17;
t26 = t12+t20;
t27 = t19+t21;
t28 = t19+t22;
Nm_xi_xi = reshape([t11,0.0,0.0,0.0,t11,0.0,0.0,0.0,t11,t26,0.0,0.0,0.0,t26,0.0,0.0,0.0,t26,t25,0.0,0.0,0.0,t25,0.0,0.0,0.0,t25,t28,0.0,0.0,0.0,t28,0.0,0.0,0.0,t28,t6,0.0,0.0,0.0,t6,0.0,0.0,0.0,t6,t9,0.0,0.0,0.0,t9,0.0,0.0,0.0,t9,t10,0.0,0.0,0.0,t10,0.0,0.0,0.0,t10,t18,0.0,0.0,0.0,t18,0.0,0.0,0.0,t18,t8,0.0,0.0,0.0,t8,0.0,0.0,0.0,t8,t24,0.0,0.0,0.0,t24,0.0,0.0,0.0,t24,t23,0.0,0.0,0.0,t23,0.0,0.0,0.0,t23,t27,0.0,0.0,0.0,t27,0.0,0.0,0.0,t27],[3,36]);
end
