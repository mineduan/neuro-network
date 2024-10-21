%fig 2 C-F
%前馈增强性   影响系数的两种计算方式：Feedford考虑对全局的影响
% Feedford2 考虑对局部的影响
%定义函数（参数为计算范围，数据集）--分别计算活性比例
%%
%前馈1：Sen-Inter-Motor
%前馈2：Sen-Modulatory-Inter-Motor
%反馈1：Motor-Inter-Sen
%反馈2：Motor-Inter-Modulatory-Sen
%Sen-sen；Inter-Inter；Motor-Motor；Modulatory-Modulatory
%共计：sen:6;Inter:6;Motor:6;Modulatory：4;

%证明方法一：影响系数：（原始活性xi-前馈1扰动活性）/原始活性xi之和（不取局部活性，取对全局的影响）
% load DataSet1;load DataSet2;load DataSet3;load DataSet4;
% load DataSet5;load DataSet6;load DataSet8;

%%
% Percent1=FeedFord(DataSet1);
% Percent2=FeedFord(DataSet2);
% Percent3=FeedFord(DataSet3);
% Percent4=FeedFord(DataSet4);
% Percent5=FeedFord(DataSet5);
% Percent6=FeedFord(DataSet6);
% Percent8=FeedFord(DataSet8);
% FeedFordPercent=[Percent1 Percent2 Percent3 Percent4,...
%     Percent5 Percent6 Percent8 ];
% disp('finished');
%%
%证明方法二：每个DataSet1,取前馈回路的活性占该阶段总体神经元的活性占比
load CountDataSet1;load CountDataSet2;load CountDataSet3;load CountDataSet4;
load CountDataSet5;load CountDataSet6;load CountDataSet7;load CountDataSet8;
Percent1=FeedFord(CountDataSet1);
Percent2=FeedFord(CountDataSet2);
Percent3=FeedFord(CountDataSet3);
Percent4=FeedFord(CountDataSet4);
Percent5=FeedFord(CountDataSet5);
Percent6=FeedFord(CountDataSet6);
Percent7=FeedFord(CountDataSet7);
Percent8=FeedFord(CountDataSet8);

% FeedFordPercent=[Percent1 Percent2 Percent3 Percent4,...
%     Percent5 Percent6 Percent7 Percent8 ];
% disp('finished');
%
row=size(DataSet1,1);
tspan=[0,1000];
n = length(DataSet1);
x1=ones(n,1);
t0=0;tf=1000;
options = [];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,DataSet1); 
x1=x(end,:).';
[Initialxeff,Initialbeta]=mybetaspace(DataSet1,x1);
disp(Initialxeff);


PercentMatrix = [Percent1; Percent2; Percent3; Percent4; Percent5; Percent6; Percent7; Percent8];

figure;
% b = bar(PercentMatrix, 'FaceColor', [0.8 0.6 0.4]); % 设置柱状图颜色为浅棕色   Feedforward2
b = bar(PercentMatrix, 'FaceColor', [0.7 0.8 0.8]);  %灰蓝色
% 设置图表标签和标题
ylabel('Impact Factor', 'FontSize', 14); % 设置 y 轴标签
title('Feedforward1', 'FontSize', 16); % 设置图表标题
ylim([0, 0.3]);
yticks(0:0.1:0.3); % 设置 y 轴的刻度间隔为 0.1
% 设置 x 轴刻度标签为倾斜显示
xticklabels({'Dataset1', 'Dataset2', 'Dataset3', 'Dataset4', 'Dataset5', 'Dataset6', 'Dataset7', 'Dataset8'});
xtickangle(45); % x 轴标签旋转 45 度

% 调整柱状图外观
b.FaceAlpha = 0.8; % 设置柱子的透明度
b.EdgeColor = 'none'; % 去掉柱子的边框



%%
function [Percent] = FeedFord2(Data)

%计算前馈的活性比例
%前馈
row=size(Data,1);
tspan=[0,1000];
n = length(Data);
x1=ones(n,1);
t0=0;tf=1000;
options = [];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,Data); 
 x1=x(end,:).';
[Initialxeff,Initialbeta]=mybetaspace(Data,x1);
xiInitial=sum(x1);

%Percent=(Initialxeff-Forwardxeff)/Initialxeff;
Percent=(xiInitial-xiFeedforward)/xiFeedforward;

end

function [M] = Change(index1,index2,index3,index4,M)

for i=index1:index2
    for j=index3:index4
        M(i,j)=0;
    end
end

end

function [Percent] = FeedFord(Data)%计算前馈的影响因子

row=size(Data,1);
tspan=[0,1000];
n = length(Data);
x1=ones(n,1);
t0=0;tf=1000;
options = [];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,Data); 
 x1=x(end,:).';
[Initialxeff,Initialbeta]=mybetaspace(Data,x1);
xiInitial=sum(x1);
disp(xiInitial)
%前馈1扰动 Sen-Inter-Motor
Feedforward2Temp=Change(1,65,66,109,Data);
Feedforward2=Change(66,109,110,151,Feedforward2Temp);

% %前馈2扰动 Sen-Modulatory-Inter-Motor
% Feedforward2Temp=Change(1,65,152,180,Data);
% Feedforward2Temp=Change(152,180,66,109,Feedforward2Temp);
% Feedforward2=Change(66,109,110,151,Feedforward2Temp);

%反馈1  Motor-Inter-Sen
% Feedforward2Temp=Change(110,151,66,109,Data);
% Feedforward2=Change(66,109,1,65,Feedforward2Temp);

% %反馈2  Motor-Inter-Modulatory-Sen
% Feedforward2Temp=Change(110,151,66,109,Data);
% Feedforward2Temp=Change(66,109,152,180,Feedforward2Temp);
% Feedforward2=Change(152,180,1,65,Feedforward2Temp);


row=size(Feedforward2,1);
tspan=[0,1000];
n = length(Feedforward2);
x2=ones(n,1); 
t0=0;tf=1000;
options = [];
[t,x] = ode45(@jiefangcheng,[t0 tf],x2,options,Feedforward2); 
x2=x(end,:).';
[Forwardxeff,Feedforwardbeta]=mybetaspace(Feedforward2,x2);
xiFeedforward=sum(x2);
disp(xiFeedforward)
Percent=(Initialxeff-Forwardxeff)/Initialxeff;
%[0.211,0.208,0.201,0.210,0.204,0.198,0.204]
%  Percent=(xiInitial-xiFeedforward)/xiInitial;  %文中：除以初始活动
%Percent=(xiInitial-xiFeedforward)/xiFeedforward;
%[0.268,0.263,0.252,0.266,0.255,0.247,0.256]

end
