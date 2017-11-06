xi=[-5:0.05:5];


GxiA=xi;

for i=1:size(xi,1)*size(xi,2)
    GxiA(i)=testSpectrumFunction(xi(i));
    disp(i);
end

figure(10);
plot(xi,GxiA,'o-');
title('the test spectrum function \rho(\omega)');
xlabel('real frequency \omega');