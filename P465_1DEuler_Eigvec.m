clear;clc;

syms u E gamma
A=[0,1,0;-(3-gamma)*u^2/2,(3-gamma)*u,gamma-1;(gamma-1)*u^3-gamma*u*E,gamma*E-3*(gamma-1)/2*u^2,gamma*u];
% latex(A)

syms rho c H
% A=subs(A,E,H-c^2/gamma);
[V,D]=eig(A);
d=diag(D);
d2=subs(d(2),E,H-c^2/gamma);
latex(V(:,1))
% tmp=subs(A,z1,sqrt(rho));
% tmp=subs(tmp,z2,sqrt(rho)*u);
% tmp=subs(tmp,z3,sqrt(rho)*H);
% latex(tmp)