clear
clc
v=6;%顶点个数
e=10;%边数
%生成图的邻接矩阵G
fileID=fopen('tu.txt');%tu.txt文件每一行为（顶点1，顶点2，边的权值）
A=textscan(fileID,'%f %f %f');
fclose(fileID);
B=cell2mat(A);%将元胞数组转换为普通数组
G=adjacentmatrix(v,e,B)%生成邻接矩阵
[min,path]=dijkstra(G,1,6)%用dijkstra算法算出C1到C6最短距离和路径
[D,P,dis,path]=Floyd(G,2,5)%用Floyd算法算出C2到C5最短距离和路径