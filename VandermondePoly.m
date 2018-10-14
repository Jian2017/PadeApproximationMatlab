
% given z and u, find the rational polynomial coefficient
% z and u should be a column vector
% the conditional number is large
% Vandermonde matrix based method is not a really good choice
% but it is easy to implement 


% example  ; delete function defination line, run as a script
% z=[1:50]'*1i;
% u=(z.^2-z-10)./(z.^3+z+3);

function [A,B]=VandermondePoly(z,u)


N=size(z,1)*size(z,2); 

if rem(N,2)==1   % N is the numbers of input data points
    na=(N-1)/2;  % na is the highest power of nominator polynomial
    nb=na;       % nb is the highest power of denominator polynomial
else
    na=N/2;
    nb=na-1;
end

% na=6;
% nb=8;

M=zeros(N,N);

if size(z,1)<size(z,2)
    z=z.';   % z=z' BUG!!!  non-congugate transpose
end

if size(u,1)<size(u,2)
    u=u.';
end

for i=1:nb
    M(:,i)=z.^i;
end

for i=1:N
    M(i,:)=-M(i,:)*u(i);
end


for i=(nb+1):N
    M(:,i)=z.^(i-nb-1);
end


x=M\u;

B=[1; x(1:nb)];
A=x((nb+1):N);

end










    
    