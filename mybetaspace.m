function [x_eff, beta_eff] = mybetaspace(A,x)  
%x_eff就是x均值   beta是度均值



sAout = sum(A);%（版本二）
x_nss = A*x;
if sum(sum(A)) == 0 
    beta_eff = 0;
    x_eff = 0;
else 
beta_eff= full(sum(sum(A*A))/sum(sum(A))); 
 x_eff = sum(x_nss)/sum(sAout); 

end
end