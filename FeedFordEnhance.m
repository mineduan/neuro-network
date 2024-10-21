%fig 2 C-F
%ǰ����ǿ��   Ӱ��ϵ�������ּ��㷽ʽ��Feedford���Ƕ�ȫ�ֵ�Ӱ��
% Feedford2 ���ǶԾֲ���Ӱ��
%���庯��������Ϊ���㷶Χ�����ݼ���--�ֱ������Ա���
%%
%ǰ��1��Sen-Inter-Motor
%ǰ��2��Sen-Modulatory-Inter-Motor
%����1��Motor-Inter-Sen
%����2��Motor-Inter-Modulatory-Sen
%Sen-sen��Inter-Inter��Motor-Motor��Modulatory-Modulatory
%���ƣ�sen:6;Inter:6;Motor:6;Modulatory��4;

%֤������һ��Ӱ��ϵ������ԭʼ����xi-ǰ��1�Ŷ����ԣ�/ԭʼ����xi֮�ͣ���ȡ�ֲ����ԣ�ȡ��ȫ�ֵ�Ӱ�죩
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
%֤����������ÿ��DataSet1,ȡǰ����·�Ļ���ռ�ý׶�������Ԫ�Ļ���ռ��
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
% b = bar(PercentMatrix, 'FaceColor', [0.8 0.6 0.4]); % ������״ͼ��ɫΪǳ��ɫ   Feedforward2
b = bar(PercentMatrix, 'FaceColor', [0.7 0.8 0.8]);  %����ɫ
% ����ͼ���ǩ�ͱ���
ylabel('Impact Factor', 'FontSize', 14); % ���� y ���ǩ
title('Feedforward1', 'FontSize', 16); % ����ͼ�����
ylim([0, 0.3]);
yticks(0:0.1:0.3); % ���� y ��Ŀ̶ȼ��Ϊ 0.1
% ���� x ��̶ȱ�ǩΪ��б��ʾ
xticklabels({'Dataset1', 'Dataset2', 'Dataset3', 'Dataset4', 'Dataset5', 'Dataset6', 'Dataset7', 'Dataset8'});
xtickangle(45); % x ���ǩ��ת 45 ��

% ������״ͼ���
b.FaceAlpha = 0.8; % �������ӵ�͸����
b.EdgeColor = 'none'; % ȥ�����ӵı߿�



%%
function [Percent] = FeedFord2(Data)

%����ǰ���Ļ��Ա���
%ǰ��
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

function [Percent] = FeedFord(Data)%����ǰ����Ӱ������

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
%ǰ��1�Ŷ� Sen-Inter-Motor
Feedforward2Temp=Change(1,65,66,109,Data);
Feedforward2=Change(66,109,110,151,Feedforward2Temp);

% %ǰ��2�Ŷ� Sen-Modulatory-Inter-Motor
% Feedforward2Temp=Change(1,65,152,180,Data);
% Feedforward2Temp=Change(152,180,66,109,Feedforward2Temp);
% Feedforward2=Change(66,109,110,151,Feedforward2Temp);

%����1  Motor-Inter-Sen
% Feedforward2Temp=Change(110,151,66,109,Data);
% Feedforward2=Change(66,109,1,65,Feedforward2Temp);

% %����2  Motor-Inter-Modulatory-Sen
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
%  Percent=(xiInitial-xiFeedforward)/xiInitial;  %���У����Գ�ʼ�
%Percent=(xiInitial-xiFeedforward)/xiFeedforward;
%[0.268,0.263,0.252,0.266,0.255,0.247,0.256]

end
