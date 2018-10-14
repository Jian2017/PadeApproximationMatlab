% plot Real and Imaginary part of the analytic Green function near real axis

xi=[-3:0.1:3];

GxiA=xi;
GxiB=xi;

for i=1:size(xi,1)*size(xi,2)
    [GxiA(i),GxiB(i)]=analyticSpectrumFunction( xi(i),0.01);
    disp(i);
end

figure(4);
plot(xi,GxiA,'o-',xi,GxiB,'o-');
lgd=legend('Re[G(\omega+i\epsilon)]','Im[G(\omega+i\epsilon)]','Location','southwest');
lgd.FontSize=16;
title('Real and Imaginary part of the analytic Green function near real axis');
xlabel('frequency \omega');