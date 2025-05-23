function Nm_xi_eta = Shape_eta_3353(L,H,W,xi,eta,zeta)
%Shape_eta_3353
%    Nm_xi_eta = Shape_eta_3353(L,H,W,XI,ETA,ZETA)

%    This function was generated by the Symbolic Math Toolbox version 24.2.
%    04-May-2025 16:40:22

t2 = H.^2;
t3 = xi+1.0;
t4 = xi.^2;
t5 = xi-1.0;
t6 = t4-1.0;
t7 = (H.*t3.*xi)./4.0;
t8 = (H.*t5.*xi)./4.0;
t11 = (eta.*t2.*t3.*xi)./8.0;
t13 = (eta.*t2.*t5.*xi)./8.0;
t9 = (H.*t6)./2.0;
t12 = (eta.*t2.*t6)./4.0;
t10 = -t9;
t14 = -t12;
Nm_xi_eta = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t8,0.0,0.0,0.0,t8,0.0,0.0,0.0,t8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t13,0.0,0.0,0.0,t13,0.0,0.0,0.0,t13,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t10,0.0,0.0,0.0,t10,0.0,0.0,0.0,t10,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t14,0.0,0.0,0.0,t14,0.0,0.0,0.0,t14,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t7,0.0,0.0,0.0,t7,0.0,0.0,0.0,t7,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t11,0.0,0.0,0.0,t11,0.0,0.0,0.0,t11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[3,45]);
end
