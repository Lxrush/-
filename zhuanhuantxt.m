clc
clear
%  A=dlmread('1-E.dat');
%  dlmwrite('1-E.txt',A,'\n');%����ת������
list=dir(['C:\Users\Lx\Desktop\yichundat\','*.DAT']);%�����ļ�
list_name=sort_nat({list.name})%����ʮ�������򣬱��1,2,3,4��˳��
n=length(list);
for i=1:n
    str=strcat('C:\Users\Lx\Desktop\yichundat\',list_name{i});
    A=dlmread(str);
    filename=strcat('C:\Users\Lx\Desktop\txt\',num2str(i),'.txt')
    dlmwrite(filename,A,'precision', '%.10f');%��DAT�ļ�ת��Ϊtxt�ļ�
    %�ļ����ϵ���˳��Ϊ1-E,1-N,1-Z��2-E......����С�����10λ
end
hebin(); %�ϲ����ݣ���Ϊ���зֱ�ΪE N Z