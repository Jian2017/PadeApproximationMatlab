% Pade fitting, from the data on the positive imaginary axi
xPade=[ 0.1:0.2:7  ];

GpadeA=xPade;
GpadeB=xPade;

N=size(xPade,1)*size(xPade,2);

for i=1:N
    
    
    [GpadeA(i),GpadeB(i)]=analyticSpectrumFunction( 0, xPade(i));
    disp(i);
end

sig=0.0001;

z=zeros(N,1);
u=z;
for i=1:N
    z(i)=xPade(i)*1i;
    u(i)=(GpadeA(i) + GpadeB(i)*1i)*(1.0+ (normrnd(0,sig)+normrnd(0,sig)*1i));
end
figure(6);
plot( xPade,real(u),'o-',xPade,imag(u),'o-');
title('input data for Pade fitting');
xlabel('Matsubara frequency \omega_n');

[A,B]=VandermondePoly(z,u);

% up to last step, I got the coefficient of A(z)/B(z) rational polynomial
% however, the format does not fit Matlab's row vector, and descending
% order polynomial format

% if size(A,1)>size(A,2)
%     matlabA=fliplr(A');
% else
%     matlabA=fliplr(A);
% end
% 
% if size(B,1)>size(B,2)
%     matlabB=fliplr(B');
% else
%     matlabB=fliplr(B);
% end
    

% now, matlabA and matlabB are row vector, which is polynomial in
% descending order



