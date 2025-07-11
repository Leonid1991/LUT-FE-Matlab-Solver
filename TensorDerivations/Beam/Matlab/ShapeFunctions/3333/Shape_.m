function Nm_xi = Shape_(L,H,W,xi,eta,zeta)
%Shape_
%    Nm_xi = Shape_(L,H,W,XI,ETA,ZETA)

%    This function was generated by the Symbolic Math Toolbox version 24.2.
%    03-Jun-2025 16:00:12

t2 = xi+1.0;
t3 = xi.^2;
t4 = xi-1.0;
t5 = -t3;
t6 = t3-1.0;
t8 = (t2.*xi)./2.0;
t9 = (t4.*xi)./2.0;
t10 = (H.*eta.*t2.*xi)./4.0;
t11 = (W.*t2.*xi.*zeta)./4.0;
t12 = (H.*eta.*t4.*xi)./4.0;
t13 = (W.*t4.*xi.*zeta)./4.0;
t7 = t5+1.0;
t14 = (H.*eta.*t6)./2.0;
t15 = (W.*t6.*zeta)./2.0;
t16 = -t14;
t17 = -t15;
Nm_xi = reshape([t9,0.0,0.0,0.0,t9,0.0,0.0,0.0,t9,t12,0.0,0.0,0.0,t12,0.0,0.0,0.0,t12,t13,0.0,0.0,0.0,t13,0.0,0.0,0.0,t13,t7,0.0,0.0,0.0,t7,0.0,0.0,0.0,t7,t16,0.0,0.0,0.0,t16,0.0,0.0,0.0,t16,t17,0.0,0.0,0.0,t17,0.0,0.0,0.0,t17,t8,0.0,0.0,0.0,t8,0.0,0.0,0.0,t8,t10,0.0,0.0,0.0,t10,0.0,0.0,0.0,t10,t11,0.0,0.0,0.0,t11,0.0,0.0,0.0,t11],[3,27]);
end
