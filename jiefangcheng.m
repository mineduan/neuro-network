function Fv = jiefangcheng(t, x, Data)
J1=2;R=1;I=1;n = length(Data);a=0.5;a_initial=0.5; x1=ones(n,1); 
% load DataSet1;
% Data=DataSet1;
G=Data;
% a_initial
%%激励强度 J2=1;%%抑制强度

for i = 1:length(x1)
        Fv(i,:) = I - x1(i) / R;
end
for i = 1:length(x)
    neighbors = find(G(i,:));  % 找到与节点i相连的节点
    for j = 1:length(neighbors)
        Fv = Fv + ((J1 / 2) * (G(i, neighbors(j))) * (1 + tanh(n * (x1(neighbors(j)) - a))));
    end
end

end