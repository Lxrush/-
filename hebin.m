%�ϲ��ļ�
%�ϲ�3��txt��Ϊ3��E,N,Z
function hebin()
clc
clear
list=dir(['C:\Users\Lx\Desktop\txt\','*.txt']);%����ת���õ�txt�ļ�
list_name=sort_nat({list.name})%����ʮ�������򣬱��1,2,3,4��˳��,�����н̳�
n=length(list);
j=1;m=1;%�����ʼ������
for i=1:n/3
        A=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));%ת����һ��txt����A��
        m=m+1;
        B=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));
        m=m+1;
        C=dlmread(strcat('C:\Users\Lx\Desktop\txt\',list_name{m}));
        m=m+1;
        out=[A B C];
        filename=strcat('C:\Users\Lx\Desktop\txtzuizong\',num2str(j),'.txt')
        dlmwrite(filename,out,'delimiter',' ','precision', '%.10f');%˳��ΪE,N,Z,ÿ3���ļ��ϲ�Ϊһ��,����Ϊ��������
        j=j+1;
end 
