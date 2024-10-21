function d= FloydBy(G)

% 用floyd 算法计算最短路径长度
N = length(G);
d=adj2cost(G);
for k=1:N
     d= min(d,repmat(d(:,k),[1 N])+repmat(d(k,:),[N 1]));      
end

