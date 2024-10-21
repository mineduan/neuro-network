
%%Fig 1E
% variable-1��1995����stable-2��829����
%developmentally dynamic (strengthened)-3��278��
%post-embryonic brain integration-4��554��
%developmentally dynamic (weakened)-5��20��

%%
load Integration.mat;load Strengthened.mat;load Stable.mat;
load Variable.mat;load Weakened;
load LinkXeff1;load LinkXeff2;load LinkXeff3;
load LinkXeff4;load LinkXeff5;load LinkXeff6;load LinkXeff8;
%%
% DataSet1
load DataSet1;[sumXi1]=LinkChange(Integration,DataSet1);
load DataSet1;[sumXi2]=LinkChange(Strengthened,DataSet1);
load DataSet1;[sumXi3]=LinkChange(Stable,DataSet1);
load DataSet1;[sumXi4]=LinkChange(Variable,DataSet1);
load DataSet1;[sumXi5]=LinkChange(Weakened,DataSet1);
disp('finished');
LinkXi1=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,1) % 
plot (X, LinkXeff1, '*-', 'linewidth', 2);hold on;
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 15);
title('DataSet1');
set(gca,'XTickLabelRotation',45);


%DataSet2
load DataSet2;[sumXi1]=LinkChange(Integration,DataSet2);
load DataSet2;[sumXi2]=LinkChange(Strengthened,DataSet2);
load DataSet2;[sumXi3]=LinkChange(Stable,DataSet2);
load DataSet2;[sumXi4]=LinkChange(Variable,DataSet2);
load DataSet2;[sumXi5]=LinkChange(Weakened,DataSet2);
LinkXi2=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,2) % 
plot (X, LinkXeff2, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet2');
disp('finished');

%DataSet4
load DataSet4;[sumXi1]=LinkChange(Integration,DataSet4);
load DataSet4;[sumXi2]=LinkChange(Strengthened,DataSet4);
load DataSet4;[sumXi3]=LinkChange(Stable,DataSet4);
load DataSet4;[sumXi4]=LinkChange(Variable,DataSet4);
load DataSet4;[sumXi5]=LinkChange(Weakened,DataSet4);
LinkXi4=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,4) % 
plot (X, LinkXeff4, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet4');
disp('finished');

%DataSet3
load DataSet3;[sumXi1]=LinkChange(Integration,DataSet3);
load DataSet3;[sumXi2]=LinkChange(Strengthened,DataSet3);
load DataSet3;[sumXi3]=LinkChange(Stable,DataSet3);
load DataSet3;[sumXi4]=LinkChange(Variable,DataSet3);
load DataSet3;[sumXi5]=LinkChange(Weakened,DataSet3);
LinkXi3=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,3) % 
plot (X, LinkXeff3, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet3');
disp('finished');

%DataSet5
load DataSet5;[sumXi1]=LinkChange(Integration,DataSet5);
load DataSet5;[sumXi2]=LinkChange(Strengthened,DataSet5);
load DataSet5;[sumXi3]=LinkChange(Stable,DataSet5);
load DataSet5;[sumXi4]=LinkChange(Variable,DataSet5);
load DataSet5;[sumXi5]=LinkChange(Weakened,DataSet5);
LinkXi5=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,5) % 
plot (X, LinkXeff5, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet5');
disp('finished');

%DataSet6
load DataSet6;[sumXi1]=LinkChange(Integration,DataSet6);
load DataSet6;[sumXi2]=LinkChange(Strengthened,DataSet6);
load DataSet6;[sumXi3]=LinkChange(Stable,DataSet6);
load DataSet6;[sumXi4]=LinkChange(Variable,DataSet6);
load DataSet6;[sumXi5]=LinkChange(Weakened,DataSet6);
LinkXi6=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,6) % 
plot (X, LinkXeff6, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet6');
disp('finished');

%DataSet8
load DataSet8;[sumXi1]=LinkChange(Integration,DataSet8);
load DataSet8;[sumXi2]=LinkChange(Strengthened,DataSet8);
load DataSet8;[sumXi3]=LinkChange(Stable,DataSet8);
load DataSet8;[sumXi4]=LinkChange(Variable,DataSet8);
load DataSet8;[sumXi5]=LinkChange(Weakened,DataSet8);
LinkXi8=[sumXi1,sumXi2,sumXi3,sumXi4,sumXi5];
X=[1,2,3,4,5];
subplot(3,3,7) % 
plot (X, LinkXeff8, '*-', 'linewidth', 2);
set(gca, 'XTick',[1:1:7]);
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca, 'FontSize', 17,'Fontname','times new Roman');
set(gca,'XTickLabelRotation',30);
title('DataSet8');
%%
%�������
save('LinkXi1','LinkXi1');
save('LinkXi2','LinkXi2');
save('LinkXi3','LinkXi3');
save('LinkXi4','LinkXi4');
save('LinkXi5','LinkXi5');
save('LinkXi6','LinkXi6');
save('LinkXi8','LinkXi8');

%%
%�Ѷ�������ͼ����һ��
subplot(3,3,9)
x=[1,2,3,4,5];
 
% Line1 = line(x,LinkXeff1);hold on;
% Line2 = line(x,LinkXi2);hold on;
% Line3 = line(x,LinkXi3);hold on;
% Line4 = line(x,LinkXi4);hold on;
% Line5 = line(x,LinkXi5);hold on;
% Line6 = line(x,LinkXi6);hold on;
% Line8 = line(x,LinkXi8);hold on;

Line1 = line(x,LinkXeff1);hold on;
Line2 = line(x,LinkXeff2);hold on;
Line3 = line(x,LinkXeff3);hold on;
Line4 = line(x,LinkXeff4);hold on;
Line5 = line(x,LinkXeff5);hold on;
Line6 = line(x,LinkXeff6);hold on;
Line8 = line(x,LinkXeff8);hold on;

C1 = 'blue';
C2 = 'black';
C3 = 'red';
C4 = 'red';
C5 = 'green';

set(Line1, 'LineStyle', '--','Marker', 'd','LineWidth', 2,  'Color', [96,155,203]/255,'MarkerSize',10,'MarkerFaceColor',[96,155,203]/255);hold on;
set(Line2, 'LineStyle', '--','Marker', 'o','LineWidth', 2,  'Color', [250, 128, 114]/255,'MarkerSize',10,'MarkerFaceColor',[250, 128, 114]/255);hold on;
set(Line3, 'LineStyle', '--','Marker', '^','LineWidth', 2,  'Color', [142, 68, 173]/255,'MarkerSize',10,'MarkerFaceColor',[142, 68, 173]/255);hold on;
set(Line4, 'LineStyle', '--','Marker', 'v','LineWidth', 2,  'Color', [52, 73, 94]/255,'MarkerSize',10,'MarkerFaceColor',[52, 73, 94]/255);hold on;
set(Line5, 'LineStyle', '--','Marker', 's','LineWidth', 2,  'Color', [49,162,0]/255,'MarkerSize',10,'MarkerFaceColor',[96,155,203]/255);hold on;
set(Line6, 'LineStyle', '--','Marker', '<','LineWidth', 2,  'Color', [184,255,242]/255,'MarkerSize',10,'MarkerFaceColor',[184,255,242]/255);hold on;
set(Line8, 'LineStyle', '--','Marker', '>','LineWidth', 2,  'Color', [212,42,31]/255,'MarkerSize',10,'MarkerFaceColor',[212,42,31]/255);hold on;

% ����������

set(gca, 'Box', 'off', ...                                % �߿�
         'XGrid', 'off', 'YGrid', 'on', ...               % ����
         'TickDir', 'out', 'TickLength', [.01 .01], ...   % �̶�
         'XMinorTick', 'off', 'YMinorTick', 'off', ...    % С�̶�
         'XColor', [.1 .1 .1],  'YColor', [.1 .1 .1])
           %'Xticklabel',{[0:1:10]} % ��������ɫ
        % 'Xticklabel',{[0:1:5]},...                   % X������̶ȱ�ǩ
        % 'Yticklabel',{[0:1:5]}
         
%          'XTick', 0:0.1:1.2,  'YTick', 0:0.05:0.5,...     % �̶�λ�á����
%          'Xlim' ,[0 1.1],'Ylim' ,[0.1 0.35], ...          % �����᷶Χ


% X��Y���ǩ��Legend

hXLabel = xlabel('Link type');
hYLabel = ylabel('x_{i}');
hLegend = legend([Line1,Line2,Line3,Line4,Line5,Line6,Line8], ...
                 'DataSet1', 'DataSet2','DataSet3','DataSet4','DataSet5', ...
                 'DataSet6', 'DataSet8');
set(gca,'XTickLabel',{'Integration','Strengthened',...
    'Stable','Variable','Weakened'});
set(gca,'XTickLabelRotation',45);
% �̶ȱ�ǩ������ֺ�
set(gca,'Fontsize',23,'FontName','Times New Roman'); % �������ִ�С��ͬʱӰ���������ע��ͼ��������ȡ�
set(hLegend, 'Fontsize', 10); 


% X��Y���ǩ��Legend�������ֺ� 
%set([hXLabel, hYLabel,hLegend], 'FontName',  'Helvetica')
%set([hXLabel, hYLabel,hLegend], 'FontSize', 10)
% ������ɫ
set(gca,'Color',[1 1 1])
disp('done');
%%
%����DataSet1
%ɾ��Integration
function [sumX]=LinkChange(change,Data) %change�仯�ľ��� Dataԭ����
r=length(change);
for i=1:r
     pre=change(i,1);
     post=change(i,2);
     Data(pre,post)=0;   %ǰ������Ϊ0
end

row=size(Data,1);%��ȡ��
tspan=[0,1000];
n = length(Data);
x1=ones(n,1); 
t0=0;tf=1000;
options =[];
[t,x] = ode45(@jiefangcheng,[t0 tf],x1,options,Data); 
 x=x(:,:).';
 %[xeff,betaeff]=mybetaspace(Data,x);
 %��xi��ֵ
 sumX=sum(x);
 %loglog(betaeff,xeff,'s');hold on;
end
%%

