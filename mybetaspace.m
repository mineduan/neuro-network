function [x_eff, beta_eff] = mybetaspace(A,x)  
%x_eff����x��ֵ   beta�ǶȾ�ֵ



sAout = sum(A);%���汾����
x_nss = A*x;
if sum(sum(A)) == 0 
    beta_eff = 0;
    x_eff = 0;
else 
beta_eff= full(sum(sum(A*A))/sum(sum(A))); 
 x_eff = sum(x_nss)/sum(sAout); 

end
end