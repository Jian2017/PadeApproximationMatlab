function [A,B]=polyAB(z,c)

N=size(z,1)*size(z,2);
a=zeros(N+1,N);
b=zeros(N+1,N);

a(1,1)=0;
a(2,1)=c(1);
b(1,1)=1;
b(2,1)=1;

for n=2:N
    for i=1:N
        a(n+1,i)=a(n,i)-a(n-1,i)*z(n-1)*c(n);  
    end
    for i=2:N
        a(n+1,i)=a(n+1,i)+a(n-1,i-1)*c(n);
    end
    
    for i=1:N
        b(n+1,i)=b(n,i)-b(n-1,i)*z(n-1)*c(n);  
    end
    for i=2:N
        b(n+1,i)=b(n+1,i)+b(n-1,i-1)*c(n);
    end
end

A=zeros(1,N);
B=zeros(1,N);
for n=1:N
    A(n)=a(N+1,n);
    B(n)=b(N+1,n);    
end