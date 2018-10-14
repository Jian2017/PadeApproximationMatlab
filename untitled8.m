Pade=[-10:0.1:10];

GpadeA=Pade;
GpadeB=Pade;

for i=1:size(Pade,1)*size(Pade,2)
    GpadeA(i)=real(VandermondePolyEvaluate(Pade(i) *1i,A,B));
    GpadeB(i)=imag(VandermondePolyEvaluate(Pade(i) *1i,A,B));

    disp(i);
end

figure(8);
plot(Pade,GpadeA,'o-',Pade,GpadeB,'o-');
title('rational polynomial value, why fitting to negative?');
xlabel('Matsubara frequency \omega_n');