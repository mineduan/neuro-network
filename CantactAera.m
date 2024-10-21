
%%Fig3
%%
%柱状图 0725
y = [10 20 30 41];

n1=[15338, 1960, 856, 352, 196, 72, 32, 28, 4, 8];
n2=[19906, 2084, 696, 272, 92, 40, 4, 8, 4, 4];
n3=[18542, 2332, 824, 292, 160, 56, 20, 12, 0, 12];
n4=[20944, 2406, 852, 396, 136, 56, 32, 28, 20, 8];

%平均活性
a1=[1889.224, 2114.645, 2136.859, 2253.114, 2179.511, 2399.248, 2621.121, 2211.041, 2970.184, 3357.122];
a2=[6060.019, 6684.854, 7228.095, 6384.384, 7636.604, 7207.459, 3198.023, 9597.594, 10873.577, 9947.425];
a3=[7014.572, 7829.685, 8122.237, 8363.963, 7834.222, 7760.284, 5862.549, 7615.733, 0, 12409.53];
a4=[12248.053, 13353.368, 14734.502, 15084.763, 14493.514, 12572.848, 12766.605, 13260.916, 12983.08, 19252.492];

subplot(3,2,1);
n1=log(n1);
barh(n1)
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。

subplot(3,2,2);
%a1=log(a1);
barh(a1);
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。


subplot(3,2,3);
n2=log(n2);
barh(n2)
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。

subplot(3,2,4);
%a1=log(a1);
barh(a2);
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。

subplot(3,2,5);
n3=log(n3);
barh(n3)
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。

subplot(3,2,6);
%a1=log(a1);
barh(a3);
yticklabels({'range1', 'range2', 'range3', 'range4', 'range5', 'range6', 'range7', 'range8', 'range9', 'range10'})
set(gca,'Fontsize',10,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。


%%
%test代码
 
a=[1,3,10,100];
log10(a)
%%
load DataSet1;load DataSet2;load DataSet3;
load DataSet4;load DataSet5;load DataSet6;load DataSet8;
%%
%%
load DataSet1;load DataSet2;load DataSet3;
load DataSet4;load DataSet5;load DataSet6;load DataSet8;

tempXeff=ClassfyByContact(DataSet1,1);
load DataSet1;tempXeffTwo=ClassfyByContactTwo(DataSet1,1);
subplot(3,3,1);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~26','26~52','52~78','78~105','105~131','131~157',...
    '157~183','183~209','209~235','235~262'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet2,2);
load DataSet2;tempXeffTwo=ClassfyByContactTwo(DataSet2,1);
subplot(3,3,2);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~51','51~103','103~154','154~206','206~257','257~308',...
    '308~360','360~411','411~462','462~514'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet3,3);
load DataSet3;tempXeffTwo=ClassfyByContactTwo(DataSet3,1);
subplot(3,3,3);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~43','43~87','87~130','130~174','174~217','217~261',...
    '261~304','304~348','348~391','391~435'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet4,4);
load DataSet4;tempXeffTwo=ClassfyByContactTwo(DataSet4,1);
subplot(3,3,4);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~51','51~101','101~152','152~202','202~253','253~303',...
    '303~354','354~404','404~455','455~505'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet5,5);
load DataSet5;tempXeffTwo=ClassfyByContactTwo(DataSet5,1);
subplot(3,3,5);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~102','102~204','204~306','306~407','407~509','509~611',...
    '611~713','713~815','815~917','917~1019'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet6,6);
load DataSet6;tempXeffTwo=ClassfyByContactTwo(DataSet6,1);
subplot(3,3,6);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~106','106~212','212~319','319~425','425~531','531~637',...
    '637~744','744~850','850~956','956~1062'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');

tempXeff=ClassfyByContact(DataSet8,8);
load DataSet8;tempXeffTwo=ClassfyByContactTwo(DataSet8,1);
subplot(3,3,7);
X=(1:1:10);
X1=[10,9,8,7,6,5,4,3,2,1];
plot(X,tempXeff,'LineWidth',2,'color',[189,143,192]/255);hold on;
plot(X1,tempXeffTwo,'LineWidth',2,'color',[247,144,71]/255);
%area(X,tempXeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',1);
set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
set(gca,'XTickLabel',{'0~174','174~349','349~523','523~697','697~872','872~1046',...
    '1046~1220','1220~1395','1395~1569','1569~1743'});
set(gca,'XTickLabelRotation',45);
set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
ylabel(' x_{eff}');
xlabel('Range of contact area(px)');
disp('finished');
%%

%%
%计算面积图的横坐标（每个图的坐标不一样）
Range1=round(CountRange(DataSet1));
Range2=round(CountRange(DataSet2));
Range3=round(CountRange(DataSet3));
Range4=round(CountRange(DataSet4));
Range5=round(CountRange(DataSet5));
Range6=round(CountRange(DataSet6));
Range8=round(CountRange(DataSet8));
%%
row=size(DataSet8,1);
tspan=[0,1000];
n = length(DataSet8);
x1=ones(n,1); 
t0=0;tf=1000;
options =[];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,DataSet8); 
 x=x(1000,:).';
 %%
 row=[2,3,5,7,8,10];
 aaa=x(row);
 %%
 Xsum=[1.222292 3.666663];
 Xsum=roundn(Xsum,-4)

 %%
 %改进版：统计活性为平均活性；再加一个数量图
 [s1,n1]=CountAeraXi(DataSet1,1);
 [s2,n2]=CountAeraXi(DataSet5,3);
 [s3,n3]=CountAeraXi(DataSet6,5);
 [s4,n4]=CountAeraXi(DataSet8,7);
disp('finished');
%%
function [Xsum,Xnum] = CountAeraXi(Data,i)
%划分为20个区间范围，计算叠加删除的效应
tempMax=max(max(Data));
tempMin=min(min(Data));
range=(tempMax-tempMin)/20;
%对接触面积进行排序
[Row1,Col1] = CountRangeByContact(Data,2,range,tempMin);
[Row2,Col2] = CountRangeByContact(Data,4,range,tempMin);
[Row3,Col3] = CountRangeByContact(Data,6,range,tempMin);
% [Row4,Col4] = CountRangeByContact(Data,4,range);
% [Row5,Col5] = CountRangeByContact(Data,5,range);
% [Row6,Col6] = CountRangeByContact(Data,6,range);
% [Row7,Col7] = CountRangeByContact(Data,7,range);
[Row4,Col4] = CountRangeByContact(Data,8,range,tempMin);
% [Row9,Col9] = CountRangeByContact(Data,9,range);
[Row5,Col5] = CountRangeByContact(Data,10,range,tempMin);
% [Row11,Col11] = CountRangeByContact(Data,11,range);
[Row6,Col6] = CountRangeByContact(Data,12,range,tempMin);
% [Row13,Col13] = CountRangeByContact(Data,12,range);
[Row7,Col7] = CountRangeByContact(Data,14,range,tempMin);
% [Row15,Col15] = CountRangeByContact(Data,15,range);
[Row8,Col8] = CountRangeByContact(Data,16,range,tempMin);
% [Row17,Col17] = CountRangeByContact(Data,17,range);
[Row9,Col9] = CountRangeByContact(Data,18,range,tempMin);
% [Row19,Col19] = CountRangeByContact(Data,19,range);
[Row10,Col10] = CountRangeByContact(Data,20,range,tempMin);
%xTemp是一个列向量
[xTemp]=CountXiByContact(Data);
Xsum=[];Xnum=[];
[sum1,num1]=SumXi(xTemp,Row1,Col1);
[sum2,num2]=SumXi(xTemp,Row2,Col2);
[sum3,num3]=SumXi(xTemp,Row3,Col3);
[sum4,num4]=SumXi(xTemp,Row4,Col4);
[sum5,num5]=SumXi(xTemp,Row5,Col5);
[sum6,num6]=SumXi(xTemp,Row6,Col6);
[sum7,num7]=SumXi(xTemp,Row7,Col7);
[sum8,num8]=SumXi(xTemp,Row8,Col8);
[sum9,num9]=SumXi(xTemp,Row9,Col9);
[sum10,num10]=SumXi(xTemp,Row10,Col10);

Xsum=[sum1 sum2 sum3 sum4 sum5 sum6 sum7 sum8 sum9 sum10];
Xnum=[num1 num2 num3 num4 num5 num6 num7 num8 num9 num10];
Xsum=(Xsum);Xnum=(Xnum);
subplot(2,4,i);
label={'range1','range2','range3','range4','range5','range6','range7','range8','range9','range10'};
%活性；
%Xsum
Xsum=roundn(Xsum,-3);x=[1 2 3 4 5 6 7 8 9 10];
b=bar(x,Xsum);%p=pie(Xsum);colormap('summer');
%set(gca,'ytick',3:0.4:5)
ylim([3,4.5]);
set(b,'FaceColor',[111,129,190]/255);
ylabel('Average activity');

%xlabel('Range');
set(gca,'XTickLabel', label,...
    'XTickLabelRotation',45);
set(gca,'Fontsize',19,'FontName','Times New Roman');
% p(2).FontSize = 19;
% p(4).FontSize = 19;
% p(6).FontSize = 19;
% p(8).FontSize = 19;
% p(10).FontSize = 19;
% p(12).FontSize = 19;
% p(14).FontSize = 19;
% p(16).FontSize = 19;
% p(18).FontSize = 19;
% p(20).FontSize = 19;
%数量
subplot(2,4,i+1);
x=[1 2 3 4 5 6 7 8 9 10];
h=bar(x,Xnum);
set(h,'FaceColor',[189,143,192]/255);
ylabel('Number');
xlabel('Range');
set(gca,'XTickLabel', label,...
    'XTickLabelRotation',45);
set(gca,'Fontsize',19,'FontName','Times New Roman');
%legend('接触面积区间数量分布');
for i = 1:10
    text(x(i)-0.25,Xnum(1,i),num2str(Xnum(1,i)),'HorizontalAlignment','center','VerticalAlignment','bottom','FontSize',13,'FontName','Times New Roman');
end;



% pText = findobj(p,'Type','text');
% pText=round(pText);
% percentValues = get(pText,'String');
% txt = {'1: ';'2: ';'3: ';'4: ';'5: ';'6: ';'7: ';'8: ';'9: ';'10: '};
% combinedtxt = strcat(txt,percentValues);
% pText(1).String = combinedtxt(1);
% pText(2).String = combinedtxt(2);
% pText(3).String = combinedtxt(3);
% pText(4).String = combinedtxt(4);
% pText(5).String = combinedtxt(5);
% pText(6).String = combinedtxt(6);
% pText(7).String = combinedtxt(7);
% pText(8).String = combinedtxt(8);
% pText(9).String = combinedtxt(9);
% pText(10).String = combinedtxt(10);

end
function [sumXi,TempNumber]=SumXi(xTemp,Row,Col)
sumXi=sum(xTemp(Row))+sum(xTemp(Col));
TempNumber=length(Row)+length(Col);
sumXi=sumXi/TempNumber;
end

function [x]=CountXiByContact(Data)
row=size(Data,1);
tspan=[0,1000];
n = length(Data);
x1=ones(n,1); 
t0=0;tf=1000;
options =[];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,Data); 
 x=x(1000,:).';
end

%%
function  Range= CountRange(Data)
tempMax=max(max(Data));
tempMin=min(min(Data));
range=(tempMax-tempMin)/20;
Range=[];
for i=0:2:20
    tempRange=tempMin+range*i;
    Range=[Range tempRange];

end
end
    
%%
%定义函数，参数为（Data）
function [Xeff] = ClassfyByContactTwo(Data,i)  %x均值 降维
%划分为20个区间范围，计算叠加删除的效应
tempMax=max(max(Data));
tempMin=min(min(Data));
range=(tempMax-tempMin)/20;
%对接触面积进行排序
[Row1,Col1] = CountRangeByContact(Data,2,range,tempMin);
[Row2,Col2] = CountRangeByContact(Data,4,range,tempMin);
[Row3,Col3] = CountRangeByContact(Data,6,range,tempMin);
% [Row4,Col4] = CountRangeByContact(Data,4,range);
% [Row5,Col5] = CountRangeByContact(Data,5,range);
% [Row6,Col6] = CountRangeByContact(Data,6,range);
% [Row7,Col7] = CountRangeByContact(Data,7,range);
[Row4,Col4] = CountRangeByContact(Data,8,range,tempMin);
% [Row9,Col9] = CountRangeByContact(Data,9,range);
[Row5,Col5] = CountRangeByContact(Data,10,range,tempMin);
% [Row11,Col11] = CountRangeByContact(Data,11,range);
[Row6,Col6] = CountRangeByContact(Data,12,range,tempMin);
% [Row13,Col13] = CountRangeByContact(Data,12,range);
[Row7,Col7] = CountRangeByContact(Data,14,range,tempMin);
% [Row15,Col15] = CountRangeByContact(Data,15,range);
[Row8,Col8] = CountRangeByContact(Data,16,range,tempMin);
% [Row17,Col17] = CountRangeByContact(Data,17,range);
[Row9,Col9] = CountRangeByContact(Data,18,range,tempMin);
% [Row19,Col19] = CountRangeByContact(Data,19,range);
[Row10,Col10] = CountRangeByContact(Data,20,range,tempMin);
Xeff=[];
%把该区间范围的链路删除，然后根据该矩阵计算一次xeff，并把该矩阵返回

% [tempData,xeff]=CountXeffByContact(Row1,Col1,Data);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row2,Col2,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row3,Col3,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row4,Col4,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row5,Col5,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row6,Col6,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row7,Col7,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row8,Col8,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row9,Col9,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row10,Col10,tempData);Xeff=[Xeff xeff];

% [tempData,xeff]=CountXeffByContact(Row11,Col11,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row12,Col12,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row13,Col13,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row14,Col14,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row15,Col15,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row16,Col16,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row17,Col17,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row18,Col18,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row19,Col19,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row20,Col20,tempData);Xeff=[Xeff xeff];


% [tempData,xeff]=CountXeffByContact(Row20,Col20,Data);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row19,Col19,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row18,Col18,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row17,Col17,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row16,Col16,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row15,Col15,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row14,Col14,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row13,Col13,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row12,Col12,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row11,Col11,tempData);Xeff=[Xeff xeff];

[tempData,xeff]=CountXeffByContact(Row10,Col10,Data);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row9,Col9,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row8,Col8,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row7,Col7,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row6,Col6,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row5,Col5,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row4,Col4,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row3,Col3,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row2,Col2,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row1,Col1,tempData);Xeff=[Xeff xeff];

%根据xeff画图
% subplot(3,3,i);
% X=(1:1:10);
% area(X,Xeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',2);
% set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
% 
% 
% set(gca,'XTickLabel',{'range1','range2','range3','range4','range5',...
%     'range6','range7','range8','range9','range10'});
% set(gca,'XTickLabelRotation',45);
% set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% ylabel(' x_{eff}');
% xlabel('Range of contact area(px)');
% disp('finished');
%set(gca,'XTickLabel',[0:1:20]);

end

function [Xeff] = ClassfyByContact(Data,i)
%划分为20个区间范围，计算叠加删除的效应
tempMax=max(max(Data));
tempMin=min(min(Data));
range=(tempMax-tempMin)/20;
%对接触面积进行排序
[Row1,Col1] = CountRangeByContact(Data,2,range,tempMin);
[Row2,Col2] = CountRangeByContact(Data,4,range,tempMin);
[Row3,Col3] = CountRangeByContact(Data,6,range,tempMin);
% [Row4,Col4] = CountRangeByContact(Data,4,range);
% [Row5,Col5] = CountRangeByContact(Data,5,range);
% [Row6,Col6] = CountRangeByContact(Data,6,range);
% [Row7,Col7] = CountRangeByContact(Data,7,range);
[Row4,Col4] = CountRangeByContact(Data,8,range,tempMin);
% [Row9,Col9] = CountRangeByContact(Data,9,range);
[Row5,Col5] = CountRangeByContact(Data,10,range,tempMin);
% [Row11,Col11] = CountRangeByContact(Data,11,range);
[Row6,Col6] = CountRangeByContact(Data,12,range,tempMin);
% [Row13,Col13] = CountRangeByContact(Data,12,range);
[Row7,Col7] = CountRangeByContact(Data,14,range,tempMin);
% [Row15,Col15] = CountRangeByContact(Data,15,range);
[Row8,Col8] = CountRangeByContact(Data,16,range,tempMin);
% [Row17,Col17] = CountRangeByContact(Data,17,range);
[Row9,Col9] = CountRangeByContact(Data,18,range,tempMin);
% [Row19,Col19] = CountRangeByContact(Data,19,range);
[Row10,Col10] = CountRangeByContact(Data,20,range,tempMin);
Xeff=[];
%把该区间范围的链路删除，然后根据该矩阵计算一次xeff，并把该矩阵返回

[tempData,xeff]=CountXeffByContact(Row1,Col1,Data);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row2,Col2,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row3,Col3,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row4,Col4,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row5,Col5,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row6,Col6,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row7,Col7,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row8,Col8,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row9,Col9,tempData);Xeff=[Xeff xeff];
[tempData,xeff]=CountXeffByContact(Row10,Col10,tempData);Xeff=[Xeff xeff];

% [tempData,xeff]=CountXeffByContact(Row11,Col11,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row12,Col12,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row13,Col13,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row14,Col14,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row15,Col15,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row16,Col16,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row17,Col17,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row18,Col18,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row19,Col19,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row20,Col20,tempData);Xeff=[Xeff xeff];


% [tempData,xeff]=CountXeffByContact(Row20,Col20,Data);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row19,Col19,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row18,Col18,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row17,Col17,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row16,Col16,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row15,Col15,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row14,Col14,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row13,Col13,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row12,Col12,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row11,Col11,tempData);Xeff=[Xeff xeff];

% [tempData,xeff]=CountXeffByContact(Row10,Col10,Data);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row9,Col9,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row8,Col8,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row7,Col7,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row6,Col6,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row5,Col5,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row4,Col4,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row3,Col3,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row2,Col2,tempData);Xeff=[Xeff xeff];
% [tempData,xeff]=CountXeffByContact(Row1,Col1,tempData);Xeff=[Xeff xeff];

%根据xeff画图
% subplot(3,3,i);
% X=(1:1:10);
% area(X,Xeff,'FaceColor',[250,204,173]/255,'EdgeColor','b','LineWidth',2);
% set(gca, 'XTick', [(1:1:10)]);  %这里是只显示1,5,10三个刻度值。
% 
% 
% set(gca,'XTickLabel',{'range1','range2','range3','range4','range5',...
%     'range6','range7','range8','range9','range10'});
% set(gca,'XTickLabelRotation',45);
% set(gca,'Fontsize',21,'FontName','Times New Roman'); % 设置文字大小，同时影响坐标轴标注、图例、标题等。
% ylabel(' x_{eff}');
% xlabel('Range of contact area(px)');
% disp('finished');
%set(gca,'XTickLabel',[0:1:20]);

end
function  [row,col] = CountRangeByContact(Data,i,range,minTemp)

    tempRange1=minTemp+range*i;
    tempRange2=minTemp+range*(i-2);


 [row,col] = find(Data>tempRange2 & Data<=tempRange1);
   
    
end

function [tempData,xeff]=CountXeffByContact(Row1,Col1,Data)
l1=length(Row1);
for i=1:l1
    Data(Row1(i),Col1(i))=0;
end

row=size(Data,1);
tspan=[0,1000];
n = length(Data);
x1=ones(n,1); 
t0=0;tf=1000;
options =[];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,Data); 
 x=x(1000,:).';
 [xeff,betaeff]=mybetaspace(Data,x);
 
 tempData=Data;

end

