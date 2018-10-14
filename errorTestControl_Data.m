clc;clear;
xPade=[ 0.1:0.2:7  ];

% sig is the relative error
%sig=0.000001;
sig=0.0001;  


GPadeReal=xPade;
GPadeImag=xPade;
sigReal=xPade;
sigImag=xPade;

N=size(xPade,1)*size(xPade,2);

for i=1:N
    [GPadeReal(i),GPadeImag(i)]=analyticSpectrumFunction( 0, xPade(i));
    sigReal(i)=sig;
    sigImag(i)=sig;
    disp(i);
end

PadeReal=[-1:0.02:5];






RR=300;

dataya=zeros(RR,size(PadeReal,2));

for R=1:RR
    dataya(R,:)=errorTest_Data(xPade,GPadeReal,GPadeImag,sigReal,sigImag,PadeReal,R);     
end

figure(1);
plot(repmat(PadeReal,RR,1)',dataya','.-');
title({ "Pade Approximation Reconstruction of \rho(\omega)",[" with G_M(\omega_n) relative error = "+num2str(sig*100)+"%"]})
xlabel(" real frequency \omega");

figure(2);
errorbar(PadeReal,mean(dataya),std(dataya),'-s','MarkerSize',10,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
title({ "Pade Approximation Reconstruction of \rho(\omega)",[" with G_M(\omega_n) relative error = "+num2str(sig*100)+"%"]})
xlabel(" real frequency \omega");

%   plot(PadeReal,output);
%     hold on;
% title({ "Pade Approximation Reconstruction of \rho(\omega)",[" with G_M(\omega_n) relative error = "+num2str(sig*100)+"%"]})
% xlabel(" real frequency \omega");
