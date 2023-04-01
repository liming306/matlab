function [G] = adjacentmatrix(v,e,B)
%根据带权无向图的所有边组成的矩阵B，生成图的邻接矩阵G
%v顶点个数 e边数 
G=inf(v);
for i=1:v
    for j=1:v
        if i==j
            G(i,j)=0;
        end
        for m=1:e
           if B(m,1)==i && B(m,2)==j 
               G(i,j)=B(m,3);
           elseif B(m,1)==j && B(m,2)==i
               G(i,j)=B(m,3);
           end
        end
    end
end
 
end