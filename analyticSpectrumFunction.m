% input is z=a+bi, and \rho(\omega)  which is inside this function
% ouput is G(z), with real and imaginary part, the convention is I
% notice that, inside function, there are some adjustable things,
% like, the integral interval


% a=1.2;
% b=0.001;


function [outputRe,outputIm]=analyticSpectrumFunction(a,b)


x=[-00005:0.00005:6.00005];

y=x;
for i=1:size(x,1)*size(x,2)
    y(i)=testSpectrumFunction( x(i) );
end

integRe=x;
integIm=x;

for i=1:size(x,1)*size(x,2)
    integRe(i)= y(i)* (a-x(i))/((a-x(i))^2 + b^2 ) ;
    integIm(i)= y(i)* (-b )/((a-x(i))^2 + b^2 ) ;
end


outputRe=trapz(x,integRe);
outputIm=trapz(x,integIm);

end

