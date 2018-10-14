function output=errorTest_Data(xPade,GPadeReal,GPadeImag,sigReal,sigImag,PadeReal,R)


rng(R);
%disp("********************* random case "+R+" *************");
N=size(xPade,1)*size(xPade,2);

z=zeros(N,1);
u=z;
for i=1:N
    z(i)=xPade(i)*1i;
    u(i)=(GPadeReal(i) + GPadeImag(i)*1i)*(1.0+ (normrnd(0,sigReal(i))+normrnd(0,sigImag(i))*1i));
end

[A,B]=VandermondePoly(z,u);

 
Rho=PadeReal;

for i=1:size(PadeReal,1)*size(PadeReal,2)
    Rho(i)=imag(VandermondePolyEvaluate(PadeReal(i)  ,A,B))/(-pi);
%     disp(i);
end

output=Rho;
end
