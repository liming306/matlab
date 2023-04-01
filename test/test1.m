y=inline('sin(t)^2*exp(-a*t)-b*abs(t)','t','a','b');  %定义内联函数，指快速自定义一个函数 inline（表达式，变量）
a=0.1;b=0.5;t=-10:0.01:10;  %变量赋值，ab是标量，t是行向量
y_char=vectorize(y);   %将上述定义的y表达式向量化，即将原来只能用于标量的表达式，变为可以用于向量的表达式（向量化将指计算一个点的值变为计算一系列y值，数量和x一致）
Y=feval(y_char,t,a,b);    %feval用于计算函数 [y1,...,yN] = feval(fun,x1,...,xM) fun是自定义函数（表达式）x1,...,xM 是计算参数
clf,plot(t,Y,'r');     %clf函数用于清除当前图像窗口 plot显示函数图像，以t为定义域画Y图像，线为红色
hold on,plot(t,zeros(size(t)),'k');   %holdon是当前轴和图像保持不刷新,准备接受以后绘制的图形,多图共存 plot画以t为定义域，以t大小的零向量的图像，线为黑色
xlabel('t');ylabel('y(t)'),hold off   %对x轴进行说明't'，y轴是'y(t)'  holdoff当前轴及图形不在具备被刷新的性质
zoom on    %当前图形可缩放
[tt,yy]=ginput(5);    %用鼠标在该图像中获取值 [x,y]=ginput(n) 使你从当前的坐标系中读取n个点，并返回这n个点的x，y坐标，均为nX1的向量。可以按回车提前结束读数。
zoom off    %当前图形不可缩放
tt
[t3,y3,exitflag]=fzero(y,tt(3),[],a,b)  %求靠近 tt(3) 的精确零点 [x值，y值，退出返回值]=fzero(函数表达式，选取的值，变量)
[t4,y4,exitflag]=fzero(y,tt(4),[],a,b)  %求靠近 tt(4) 的精确零点
