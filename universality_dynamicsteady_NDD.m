function [F1,xs,ij] = universality_dynamicsteady_NDD(G1,a_initial,R,I,J1,n,a)   
% [G,D]=BA(100,2,2);
% G=ERgraph(100,0.05)
[M,N]=size(G1);
x0=ones(N,1)*a_initial;
%x0=xs;
%[F1,ij]=runge_kutta1(@fun2,x0,0.01,0,100,G);
options=odeset('Reltol',1e-15);
[ij,F1]=ode45(@funNDD,[0,2000],x0,options,G1,R,I,J1,n,a);
xs=F1(end,:);
end