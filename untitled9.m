Pade=[-5:0.1:5];

GpadeA=Pade;
GpadeB=Pade;

for i=1:size(Pade,1)*size(Pade,2)
    GpadeA(i)=real(VandermondePolyEvaluate(Pade(i)  ,A,B));
    GpadeB(i)=imag(VandermondePolyEvaluate(Pade(i)  ,A,B));

    disp(i);
end

% figure(9);
% plot(Pade,GpadeA,'o-',Pade,GpadeB,'o-');
% title('rational polynomial value, why fitting to negative?');
% xlabel('real frequency  \omega');
% 
% figure(91);
% plot(Pade,GpadeB/(-pi),'o-');
% title('reconstructed \rho(\omega) from Pade approximation');
% xlabel('real frequency  \omega');

 


GxiA=Pade;

for i=1:size(Pade,1)*size(Pade,2)
    GxiA(i)=testSpectrumFunction(Pade(i));
    disp(i);
end

figure(92);
plot(Pade,GpadeB/(-pi),'o-',Pade,GxiA,'x-');
lgd=legend('Pade Approximation','Orignal \rho(\omega)','Location','southwest');
lgd.FontSize=16;
title('comparson of orginal and constructed \rho(\omega)');
xlabel('real frequency  \omega');