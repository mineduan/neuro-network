%构建dataset1矩阵:212*212
filename = 'dataset1.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet1=num1;
%分类：sensory 1-65；Inter 66-109;Modulatory 110-180；Muscle 181-212

filename = 'Dataset2.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet2=num1;

filename = 'Dataset3.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet3=num1;

filename = 'Dataset4.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet4=num1;

filename = 'Dataset5.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet5=num1;

filename = 'Dataset6.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet6=num1;

filename = 'Dataset8.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:HD212');   
DataSet8=num1;
%%

%构建数量连接矩阵:180*180（不包含包含肌肉）
filename = 'CountDataSet1.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet1=num1;
%分类：sensory 1-65；Inter 66-109;Modulatory 110-180；Muscle 181-212

filename = 'CountDataSet2.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet2=num1;

filename = 'CountDataSet3.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet3=num1;

filename = 'CountDataSet4.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet4=num1;

filename = 'CountDataSet5.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet5=num1;

filename = 'CountDataSet6.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet6=num1;

filename = 'CountDataSet7.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet7=num1;

filename = 'CountDataSet8.xlsx';                       %文件名
[num1,txt,raw] = xlsread(filename,'A1:FX180');   
CountDataSet8=num1;
disp('finished');
%%
save('CountDataSet1','CountDataSet1');
save('CountDataSet2','CountDataSet2');
save('CountDataSet3','CountDataSet3');
save('CountDataSet4','CountDataSet4');
save('CountDataSet5','CountDataSet5');
save('CountDataSet6','CountDataSet6');
save('CountDataSet7','CountDataSet7');
save('CountDataSet8','CountDataSet8');
disp('finished')
%%
%缩小权重的量级
DataSet1=DataSet1*0.0001;
DataSet2=DataSet2*0.0001;
DataSet3=DataSet3*0.0001;
DataSet4=DataSet4*0.0001;
DataSet5=DataSet5*0.0001;
DataSet6=DataSet6*0.0001;
DataSet8=DataSet8*0.0001;

save('DataSet1','DataSet1');
save('DataSet2','DataSet2');
save('DataSet3','DataSet3');
save('DataSet4','DataSet4');
save('DataSet5','DataSet5');
save('DataSet6','DataSet6');
save('DataSet8','DataSet8');
disp('finished')

