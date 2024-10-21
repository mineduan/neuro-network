%�м���Ԫ���ȶ���
%%
%�۲�DataSet1ɾ��ÿ����Ϣ��·�����м���Ԫ�Ĺ�����ΧӰ��
%�ı�ǰ��1�����м���Ԫ���ȶ���
load DataSet1;
%�����ʼ���м���Ԫ--������Χ;Inter 66-109;
Component=find_gaint_component(DataSet1);
DataSet1=DataSet1(Component,Component);
DataSet1=round(DataSet1);
[d]= FloydBy(DataSet1);
d_max=max(max(d));
a_initial=0.5;
A=DataSet1;%%%��Ȩ����
fw=1;
%for j=1:length(fw)
%nodelabel=GMaleChem.Nodes(setdiff(1:n,L),:);
%Anodelabel=GHermChem.Nodes;
J1=2;%%����ǿ�� J2=1;%%����ǿ��
a_initial=1;
R=1;
I=1;
n=2;
a=0.5;
[F,xs,ij] = universality_dynamicsteady_NDD(A,a_initial,R,I,J1,n,a);
%[F,xs,G,ij] = universality_dynamicsteady_ED(A1,a_initial);%BD����ÿһ���ڵ��xiֵ

Tempxs=xs(66:109);%ֻȡ�м���Ԫ
x_m=mean(Tempxs);%���ֵ
xi_r=Tempxs-x_m;%�����ֵ
Cr=zeros(1,d_max+1);
Cr(1)=sum(xi_r.^2)/sum(xi_r.^2);

d=d(66:109,66:109);        %��ͬ�������м���Ԫ�ڲ����ҿ��Ե���ķ�Χ

for i=2:d_max+1  
[rows,cols] = find(d==i-1);%���ҿ��Ե���ķ�Χ
Cr(i)=mean(xi_r(rows).*xi_r(cols))/mean(xi_r.^2);
STD(i)=std(xi_r(rows).*xi_r(cols)/mean(xi_r.^2));
end
%end
r=(1/fw)*(0:d_max);
subplot(3,3,1) % 
plot(r, Cr)
%hold on;
shadedErrorBar(r,Cr,STD,'lineprops',{'b-o','markerfacecolor','b'});
title('Initial');

%����·��1��ǰ��1��Sen-Inter-Motor
load DataSet1;
Feedforward1Temp=Change(1,65,66,109,DataSet1);
Feedforward1=Change(66,109,110,151,Feedforward1Temp);
subplot(3,3,2); % 
CountCorrrelationsInter(Feedforward1Temp);
title('ǰ��1�Ŷ�');

%����·��2��ǰ��2��Sen-Modulatory-Inter-Motor
load DataSet1;
Feedforward2Temp=Change(1,65,152,180,DataSet1);
Feedforward2Temp=Change(152,180,66,109,Feedforward2Temp);
Feedforward2=Change(66,109,110,151,Feedforward2Temp);
subplot(3,3,3); % 
CountCorrrelationsInter(Feedforward2);
title('ǰ��2�Ŷ�');

%����·��3��Sen-sen
load DataSet1;
Recur1=Change(1,65,1,65,DataSet1);
subplot(3,3,4); % 
CountCorrrelationsInter(Recur1);
title('��ѭ��1�Ŷ�');

%����·��4��Inter-Inter
load DataSet1;
Recur2=Change(66,109,66,109,DataSet1);
subplot(3,3,5); % 
CountCorrrelationsInter(Recur2);
title('��ѭ��2�Ŷ�');

%����·��5��Motor-Motor
load DataSet1;
Recur3=Change(110,151,110,151,DataSet1);
subplot(3,3,6); % 
CountCorrrelationsInter(Recur3);
title('��ѭ��3�Ŷ�');

%����·��6��Modulatory-Modulatory
load DataSet1;
Recur4=Change(152,180,152,180,DataSet1);
subplot(3,3,7); % 
CountCorrrelationsInter(Recur4);
title('��ѭ��4�Ŷ�');
%����·��7������1��Motor-Inter-Sen

load DataSet1;
FeedBackward1Temp=Change(110,151,66,109,DataSet1);
FeedBackward1=Change(66,109,1,65,FeedBackward1Temp);
subplot(3,3,8); % 
CountCorrrelationsInter(FeedBackward1);
title('����1�Ŷ�');

%����·��8������2��Motor-Inter-Modulatory-Sen
load DataSet1;
FeedBackward2Temp=Change(110,151,66,109,DataSet1);
FeedBackward2Temp=Change(66,109,152,180,FeedBackward2Temp);
FeedBackward2=Change(152,180,1,65,FeedBackward2Temp);
subplot(3,3,9); % 
CountCorrrelationsInter(FeedBackward2);
title('����2�Ŷ�');
%%
%��ͬ�����׶Σ��м���Ԫ�Ĺ�����Χ
load DataSet1;subplot(3,3,1);CountCorrrelationsInter(DataSet1);title('DateSet1');
load DataSet2;subplot(3,3,2);CountCorrrelationsInter(DataSet2);title('DateSet2');
load DataSet3;subplot(3,3,3);CountCorrrelationsInter(DataSet3);title('DateSet3');
load DataSet4;subplot(3,3,4);CountCorrrelationsInter(DataSet4);title('DateSet4');
load DataSet5;subplot(3,3,5);CountCorrrelationsInter(DataSet5);title('DateSet5');
load DataSet6;subplot(3,3,6);CountCorrrelationsInter(DataSet6);title('DateSet6');
load DataSet8;subplot(3,3,7);CountCorrrelationsInter(DataSet8);title('DateSet8');

%%
function CountCorrrelationsInter(Data)

Component=find_gaint_component(Data);
Data=Data(Component,Component);
Data=round(Data);
[d]= FloydBy(Data);
d_max=max(max(d));
a_initial=0.5;
A=Data;%%%��Ȩ����

fw=1;
%for j=1:length(fw)
%nodelabel=GMaleChem.Nodes(setdiff(1:n,L),:);
%Anodelabel=GHermChem.Nodes;
J1=2;%%����ǿ�� J2=1;%%����ǿ��
a_initial=1;
R=1;
I=1;
n=2;
a=0.5;
[F,xs,ij] = universality_dynamicsteady_NDD(A,a_initial,R,I,J1,n,a);
%[F,xs,G,ij] = universality_dynamicsteady_ED(A1,a_initial);%BD����ÿһ���ڵ��xiֵ

Tempxs=xs(66:109);%ֻȡ�м���Ԫ
x_m=mean(Tempxs);%���ֵ
xi_r=Tempxs-x_m;%�����ֵ
Cr=zeros(1,d_max+1);
Cr(1)=sum(xi_r.^2)/sum(xi_r.^2);

d=d(66:109,66:109);        %���м���Ԫ�ڲ����ҿ��Ե���ķ�Χ

for i=2:d_max+1  
[rows,cols] = find(d==i-1);%��ȫ�ַ�Χ���ҿ��Ե���ķ�Χ
Cr(i)=mean(xi_r(rows).*xi_r(cols))/mean(xi_r.^2);
STD(i)=std(xi_r(rows).*xi_r(cols)/mean(xi_r.^2));
end
%end
r=(1/fw)*(0:d_max);
%hold on
plot(r, Cr)
%hold on;
shadedErrorBar(r,Cr,STD,'lineprops',{'b-o','markerfacecolor','b'});
end

function [M] = Change(index1,index2,index3,index4,M)

for i=index1:index2
    for j=index3:index4
        M(i,j)=0;
    end
end

end
function [F,xs,ij] = universality_dynamicsteady_NDD(G1,a_initial,R,I,J1,n,a)   
%[G,D]=BA(100,2,2);
%G=ERgraph(100,0.05)
[m,n]=size(G1);


x0=ones(n,1)*a_initial;
%x0=xs;
%[F1,ij]=runge_kutta1(@fun2,x0,0.01,0,100,G);
options=odeset('Reltol',1e-15);
[ij,F1]=ode45(@funNDD,[0,2000],x0,options,G1,R,I,J1,n,a);
F=F1;
xs=F(end,:);
end
