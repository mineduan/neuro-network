function d= FloydBy(G)

% ��floyd �㷨�������·������
N = length(G);
d=adj2cost(G);
for k=1:N
     d= min(d,repmat(d(:,k),[1 N])+repmat(d(k,:),[N 1]));      
end

