% function [dist]=floyd(a)
% %Ѱ��i,j�������·��
% % ���룺a?�ڽӾ���Ԫ��(aij)�Ƕ���i��j֮���ֱ����룬�����������
% % sb?���ı�ţ�db?�յ�ı��
% % �����dist?���·�ľ��룻% path?���·��·��
% n=size(a,1);
% m=a;
% for i=1:n   %path����ĳ�ʼ��
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
% n=size(a,1); %a����
% d=a;% ��ʼ���������
% r=zeros(size(a));% ��ʼ��·�ɾ���
% for i=1:n
%     for j=1:n
%         r(i,j)=j;
%     end 
% end 
% % Floyd�㷨��ʼ
% for k=1:n
%     for i=1:n
%         for j=1:n
%             %(i,j)= min(d(i,j),d(i,k)+d(k,j));%��ֻ��������·���������ʹ��״̬ת�Ʒ�����д
%             if d(i,k)+d(k,j)<d(i,j)
%                 d(i,j)=d(i,k)+d(k,j);
%                 r(i,j)=r(i,k);%�ȼ����󴫵ݱհ����м���ɵĵ�Ϊk
%             end 
%         end 
%     end
%     k;
%     d;
%     r;
% end


%a�Ǿ������Ҳ���Ǹ������ľ���
%r��·�ɾ���ָ�����ҵ�����֮�����̾����Ӧ��·���������ÿ��Կ�һ��ԭ��
%����
%a=[0 4 11;6 0 2;3 inf 0];


% function [d]=floyd(a)
% n=size(a,1);
% % ��ʼ���������
% d=a;
% % ��ʼ��·�ɾ���
% for i=1:n
%     for j=1:n
%         r(i,j)=j;
%     end 
% end 
% %r;
% 
% % Floyd�㷨��ʼ
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


% %function [D, P, dis, path] = Floyd(W, start, stop) %startΪָ����ʼ��㣬stopΪָ����ֹ���
% function [D] = floyd(W, start, stop) %startΪָ����ʼ��㣬stopΪָ����ֹ���
% 
% D = W; %��̾�����󸳳�ֵ
% n = length(D); %nΪ������
% P = zeros(n,n); %·�ɾ��󸳳�ֵ
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
%                 D(i,j) = D(i,k) + D(k,j);   %���Ĵ���
%                 P(i,j) = P(i,k);
%             end
%         end
%     end
% end
%                   
% if nargin ~= 3
%     errordlg('����������������', 'Warning!')
% else
%     dis = D(start, stop); %ָ�����������̾���
%     m(1) = start;
%     i = 1;
% 
%     while P(m(i),stop) ~= stop
%         k = i + 1;
%         m(k) = P(m(i),stop);
%         i = i + 1;
%     end
%     m(i+1) = stop;
%     path = m; %ָ�������֮������·��
% end
%   

% floyd.m
% ����floyd�㷨����ͼa��ÿ�Զ������·
% d�Ǿ������
% r��·�ɾ���





