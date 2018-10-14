function c=continued_fraction_coefficient(z,u)

c=z;

% input can be either column vector or row vector
N=size(z,1)*size(z,2);


% g is two dimensional array,  g(i,j)
g=zeros(N,N);
for i=1:N
    g(1,i)=u(i);
end

for i=2:N    for j=i:N
        
        disp(["***************** one cycle  ***************"]);
        
        disp(["g("+i+","+j+")="+g(i,j)]);
        
        disp(  g(i-1,i-1) -g(i-1,j) ); 
        disp( g(i-1,j));
        
        
        g(i,j)=( g(i-1,i-1) -g(i-1,j) )/ ( (z(j)-z(i-1))*g(i-1,j));
        
        
%         disp(["("+ g(i-1,i-1) +"-"+g(i-1,j)+" )/ ( ("+z(j)+"-"+z(i-1)+")*"+g(i-1,j)+")"]);
        
        
        disp(["g("+i+","+j+")="+g(i,j)]);
    end
end

for i=1:N
    c(i)=g(i,i);
end

return