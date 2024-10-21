%fig 4 Data 8
load DataSet8;
%DataSet8(find(DataSet8))=1;
Component=find_gaint_component(DataSet8);
DataSet8=DataSet8(Component,Component);
DataSet8=round(DataSet8);
[d]= FloydBy(DataSet8);
%%
clear all;
load DataSet1;
%DataSet8(find(DataSet8))=1;
Component=find_gaint_component(DataSet1);
DataSet1=DataSet1(Component,Component);
DataSet1=round(DataSet1);
[d]= FloydBy(DataSet1);
%%
clear all;
load DataSet8;
%DataSet8(find(DataSet8))=1;
Component=find_gaint_component(DataSet8);
DataSet8=DataSet8(Component,Component);
DataSet8=round(DataSet8);

%不为0的取倒数
[row1,col1]=find(DataSet8~=0);
l=length(row1);
for i=1:l
    rowTemp=row1(i,1);
    colTemp=col1(i,1);
    DataSet8(rowTemp,colTemp)=1/DataSet8(rowTemp,colTemp);
end


[d]= FloydBy(DataSet8);
%找到d的半径范围,划分区间范围
UniqueD=unique(d);
d_max=max(max(d));
Range=d_max/20;%0-0.001：0.207（0.03）
RangeNum=d_max/Range;
%统计区间范围个数
    
Range1=length(find(d>0&d<0.001));
Range2=length(find(d>=0.001&d<0.002));
Range3=length(find(d>=0.002&d<0.003));
Range4=length(find(d>=0.003&d<0.004));
Range5=length(find(d>=0.004&d<0.005));
Range6=length(find(d>=0.005&d<0.006));
Range7=length(find(d>=0.006&d<0.007));
Range8=length(find(d>=0.007&d<0.001));
Range9=length(find(d>=0.008&d<0.001));
Range10=length(find(d>=0.009&d<0.01));
Range11=length(find(d>=0.01&d<0.011));
Range12=length(find(d>=0.011&d<0.012));
Range13=length(find(d>=0.012&d<0.013));
Range14=length(find(d>=0.013&d<0.014));
Range15=length(find(d>=0.014&d<0.015));
Range16=length(find(d>=0.015&d<0.016));
Range17=length(find(d>=0.016&d<0.017));
Range18=length(find(d>=0.017&d<0.018));
Range19=length(find(d>=0.018&d<0.019));
Range20=length(find(d>=0.019&d<0.020));
Range21=length(find(d>=0.020&d<0.021));

Range=[Range1 Range2 Range3 Range4 Range5,...
       Range6 Range7 Range8 Range9 Range10,...
       Range11 Range12 Range13 Range14 Range15,...
       Range16 Range17 Range18 Range19 Range20 Range21];
 A={}; 
 
 %for i=1:RangeNum+1
[A{1,1},A{2,1}]=find(d>=0.001&d<0.002);
[A{1,2},A{2,2}]=find(d>=0.001&d<0.002);
[A{1,3},A{2,3}]=find(d>=0.002&d<0.003);
[A{1,4},A{2,4}]=find(d>=0.003&d<0.004);
[A{1,5},A{2,5}]=find(d>=0.004&d<0.005);
[A{1,6},A{2,6}]=find(d>=0.005&d<0.006);
[A{1,7},A{2,7}]=find(d>=0.006&d<0.007);
[A{1,8},A{2,8}]=find(d>=0.007&d<0.001);
[A{1,9},A{2,9}]=find(d>=0.008&d<0.001);
[A{1,10},A{2,10}]=find(d>=0.009&d<0.01);
[A{1,11},A{2,11}]=find(d>=0.01&d<0.011);
[A{1,12},A{2,12}]=find(d>=0.011&d<0.012);
[A{1,13},A{2,13}]=find(d>=0.012&d<0.013);
[A{1,14},A{2,14}]=find(d>=0.013&d<0.014);
[A{1,15},A{2,15}]=find(d>=0.014&d<0.015);
[A{1,16},A{2,16}]=find(d>=0.015&d<0.016);
[A{1,17},A{2,17}]=find(d>=0.016&d<0.017);
[A{1,18},A{2,18}]=find(d>=0.017&d<0.018);
[A{1,19},A{2,19}]=find(d>=0.018&d<0.019);
[A{1,20},A{2,20}]=find(d>=0.019&d<0.020);
[A{1,21},A{2,21}]=find(d>=0.020&d<0.021);


a_initial=0.5;
D=DataSet8;%%%加权矩阵
fw=1;
%for j=1:length(fw)
%nodelabel=GMaleChem.Nodes(setdiff(1:n,L),:);
%Anodelabel=GHermChem.Nodes;
J1=2;%%激励强度 J2=1;%%抑制强度
a_initial=1;
R=1;
I=1;
n=2;
a=0.5;
[F,xs,ij] = universality_dynamicsteady_NDD(D,a_initial,R,I,J1,n,a);
%[F,xs,G,ij] = universality_dynamicsteady_ED(A1,a_initial);%BD仿真每一个节点的xi值
x_m=mean(xs);%求均值
xi_r=xs-x_m;%求相对值

%dLength=length(UniqueD);
Cr=zeros(1,RangeNum+1);
Cr(1)=sum(xi_r.^2)/sum(xi_r.^2);

%for i=2:RangeNum+1
  [Cr(2),STD(2)] = CountCrSTD(2,A{1,1},A{2,1},xi_r);
  [Cr(3),STD(3)] = CountCrSTD(3,A{1,2},A{2,2},xi_r);
  [Cr(4),STD(4)] = CountCrSTD(4,A{1,3},A{2,3},xi_r);
  [Cr(5),STD(5)] = CountCrSTD(5,A{1,4},A{2,4},xi_r);
  [Cr(6),STD(6)] = CountCrSTD(6,A{1,5},A{2,5},xi_r);
  [Cr(7),STD(7)] = CountCrSTD(7,A{1,6},A{2,6},xi_r);
  [Cr(8),STD(8)] = CountCrSTD(8,A{1,7},A{2,7},xi_r);
  [Cr(9),STD(9)] = CountCrSTD(9,A{1,8},A{2,8},xi_r);
[Cr(10),STD(10)] = CountCrSTD(10,A{1,9},A{2,9},xi_r);
[Cr(11),STD(11)] = CountCrSTD(11,A{1,10},A{2,10},xi_r);
[Cr(12),STD(12)] = CountCrSTD(12,A{1,11},A{2,11},xi_r);
[Cr(13),STD(13)] = CountCrSTD(13,A{1,12},A{2,12},xi_r);
[Cr(14),STD(14)] = CountCrSTD(14,A{1,13},A{2,13},xi_r);
[Cr(15),STD(15)] = CountCrSTD(15,A{1,14},A{2,14},xi_r);
[Cr(16),STD(16)] = CountCrSTD(16,A{1,15},A{2,15},xi_r);
[Cr(17),STD(17)] = CountCrSTD(17,A{1,16},A{2,16},xi_r);
[Cr(18),STD(18)] = CountCrSTD(18,A{1,17},A{2,17},xi_r);
[Cr(19),STD(19)] = CountCrSTD(19,A{1,18},A{2,18},xi_r);
[Cr(20),STD(20)] = CountCrSTD(20,A{1,19},A{2,19},xi_r);
[Cr(21),STD(21)] = CountCrSTD(21,A{1,20},A{2,20},xi_r);
[Cr(22),STD(22)] = CountCrSTD(22,A{1,21},A{2,21},xi_r);
%end


% 
% for i=1:21
%  temp=UniqueD(i);
% [rows,cols] = find(d==temp);
% Cr(i)=mean(xi_r(rows).*xi_r(cols))/mean(xi_r.^2);
% STD(i)=std(xi_r(rows).*xi_r(cols)/mean(xi_r.^2));
% end
%end

r=(1/fw)*(0:RangeNum+1);
hold on
plot(r, Cr);
hold on;
shadedErrorBar(r,Cr,STD,'lineprops',{'b-o','markerfacecolor','b'});
%ezplot('0');
line([0,21],[0,0],'color','y','linestyle','-');

function [CrTemp,STDTemp] = CountCrSTD(i,RangeRowArray,RangeColArray,xi_r)

CrTemp=mean(xi_r(RangeRowArray).*xi_r(RangeColArray))/mean(xi_r.^2);
STDTemp=std(xi_r(RangeRowArray).*xi_r(RangeColArray)/mean(xi_r.^2));

end