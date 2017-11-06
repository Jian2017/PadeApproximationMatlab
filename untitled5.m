% Real and Imaginary part of the analytic Green function on imaginary axis

xi=[0.1:0.1:5];

GxiA=xi;
GxiB=xi;

for i=1:size(xi,1)*size(xi,2)
    [GxiA(i),GxiB(i)]=analyticSpectrumFunction( 0, xi(i));
    disp(i);
end
figure(5)
plot(xi,GxiA,'o-',xi,GxiB,'o-');
lgd=legend('Re[G(\omega_n)]','Im[G(\omega_n)]','Location','southwest' );
% lgd.FontSize = 18;
title('Real and Imaginary part of the analytic Green function on the imaginary axis \omega_n');
xlabel('Matsubara frequency  \omega_n');