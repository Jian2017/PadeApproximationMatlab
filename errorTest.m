function output=errorTest(xPade,sig,R)



GpadeA=xPade;
Rho=xPade;

N=size(xPade,1)*size(xPade,2);

for i=1:N
    
    
    [GpadeA(i),Rho(i)]=analyticSpectrumFunction( 0, xPade(i));
    disp(i);
end
 

rng(R);

z=zeros(N,1);
u=z;
for i=1:N
    z(i)=xPade(i)*1i;
    u(i)=(GpadeA(i) + Rho(i)*1i)*(1.0+ (normrnd(0,sig)+normrnd(0,sig)*1i));
end

[A,B]=VandermondePoly(z,u);

PadeReal=[-1:0.1:5];

 
Rho=PadeReal;

for i=1:size(PadeReal,1)*size(PadeReal,2)
     Rho(i)=imag(VandermondePolyEvaluate(PadeReal(i)  ,A,B))/(-pi);

    disp(i);
end

output=Rho;
end
