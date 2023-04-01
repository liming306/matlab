x=-2:0.5:2;y=x;    %x赋向量 y函数
[X,Y]=meshgrid(x,y);   %用于生成网格采样点数 [X,Y]=meshgrid(x,y)基于向量x和y中包含的坐标返回二维网格坐标。X是一个矩阵，每一行是x的一个副本，Y也是一个矩阵，每一列是y的一个副本，坐标X和Y表示的网格有length(y)个行和length(x)个列
F1=sin(X-Y);F2=cos(X+Y); %定义F*函数
v=[-0.2, 0, 0.2]; 
%contour(X,Y,Z,V):绘制X和Y指定的二维网格上的等高线图，其中等高线的高度由向量Ⅳ指定。其中，X和Y是一维数组，分别表示X轴和Y轴上的坐标，Z是一个二维数组，表示要绘制等高线图的数据，Ⅳ是一个一维数组，表示等高线的高度。
contour(X,Y,F1,v)   %以XY为轴F1为绘制的数据，v为等高线高度划线，并保持轴和图像不刷新
hold on,contour(X,Y,F2,v); %以XY为轴F2为绘制的数据，v为等高线高度划线
line([-2 2],[0 0],'color','r')  %在x轴-2~2的范围内，y为0的地方划红线
hold off %轴和图像不保持
[x0,y0]=ginput(2); %用鼠标在该图像中获取两个xy值
disp([x0,y0])   %显示第一个xy值
fun='[sin(x(1)-x(2)),cos(x(1)+x(2))]'; %自定义函数
[xy,f,exit]=fsolve(fun,[x0(2),y0(2)])  %找到零点  [x,fval,exitflag,output] = fsolve(myfun,x0,options)
