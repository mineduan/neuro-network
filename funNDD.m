function [Fv]=funNDD(~,x0,G1,R,I,J1,n,a)
for i = 1:length(G1)
    Fv(i,:) = I-x0(i)/R; 
end
for i = 1:length(x0)
    neighbors = find(G1(i,:)~=0); 
    for j = 1:length(neighbors)
       Fv(i) = Fv(i)+((J1/2)*(G1(i,neighbors(j)))*(1+tanh(n*(x0(neighbors(j))-a))));
    end
end
end


