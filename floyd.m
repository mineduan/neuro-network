% function [dist]=floyd(a)
% %寻找i,j两点最短路径
% % 输入：a?邻接矩阵，元素(aij)是顶点i到j之间的直达距离，可以是有向的
% % sb?起点的标号；db?终点的标号
% % 输出：dist?最短路的距离；% path?最短路的路径
% n=size(a,1);
% m=a;
% for i=1:n   %path矩阵的初始化
%     for j=1:n
%         path(i,j)=j;
%     end
% end
%    
% for k=1:n
%     for i=1:n
%         for j=1:n
%             if a(i,j)>a(i,k)+a(k,j)
%                 a(i,j)=a(i,k)+a(k,j);
%                 path(i,j)=k;
%             end
%         end
%     end
% end
% for sb=1:n
%    for db=1:n
%       t=path(sb,db);
%       dist(sb,db)=m(sb,t);
%        while t~=db
%          p=path(t,db);        
%          dist(sb,db)=dist(sb,db)+m(t,db);
%          t=p;
%        end
%     end
% end

% function [d,r]=floyd(a)
% n=size(a,1); %a的行
% d=a;% 初始化距离矩阵
% r=zeros(size(a));% 初始化路由矩阵
% for i=1:n
%     for j=1:n
%         r(i,j)=j;
%     end 
% end 
% % Floyd算法开始
% for k=1:n
%     for i=1:n
%         for j=1:n
%             %(i,j)= min(d(i,j),d(i,k)+d(k,j));%若只需计算最短路矩阵，则可以使用状态转移方程来写
%             if d(i,k)+d(k,j)<d(i,j)
%                 d(i,j)=d(i,k)+d(k,j);
%                 r(i,j)=r(i,k);%等价于求传递闭包，中间过渡的点为k
%             end 
%         end 
%     end
%     k;
%     d;
%     r;
% end


%a是距离矩阵，也就是各顶点间的距离
%r是路由矩阵，指的是找到各点之间的最短距离对应的路径，不懂得可以看一下原理
%例如
%a=[0 4 11;6 0 2;3 inf 0];


% function [d]=floyd(a)
% n=size(a,1);
% % 初始化距离矩阵
% d=a;
% % 初始化路由矩阵
% for i=1:n
%     for j=1:n
%         r(i,j)=j;
%     end 
% end 
% %r;
% 
% % Floyd算法开始
% for k=1:n
%     for i=1:n
%         for j=1:n
%             if d(i,k)+d(k,j)<d(i,j)
%                 d(i,j)=d(i,k)+d(k,j);
%                 r(i,j)=r(i,k);
%             end 
%         end 
%     end
%    % k;d;r;
% end
% end


% %function [D, P, dis, path] = Floyd(W, start, stop) %start为指定起始结点，stop为指定终止结点
% function [D] = floyd(W, start, stop) %start为指定起始结点，stop为指定终止结点
% 
% D = W; %最短距离矩阵赋初值
% n = length(D); %n为结点个数
% P = zeros(n,n); %路由矩阵赋初值
% 
% for i = 1:n
%     for j = 1:n
%         P(i,j) = j;
%     end
% end
% 
% for k = 1:n
%     for i = 1:n
%         for j = 1:n
%             if D(i,k) + D(k,j) < D(i,j)
%                 D(i,j) = D(i,k) + D(k,j);   %核心代码
%                 P(i,j) = P(i,k);
%             end
%         end
%     end
% end
%                   
% if nargin ~= 3
%     errordlg('参数个数输入有误！', 'Warning!')
% else
%     dis = D(start, stop); %指定两结点间的最短距离
%     m(1) = start;
%     i = 1;
% 
%     while P(m(i),stop) ~= stop
%         k = i + 1;
%         m(k) = P(m(i),stop);
%         i = i + 1;
%     end
%     m(i+1) = stop;
%     path = m; %指定两结点之间的最短路径
% end
%   

% floyd.m
% 采用floyd算法计算图a中每对顶点最短路
% d是矩离矩阵
% r是路由矩阵





