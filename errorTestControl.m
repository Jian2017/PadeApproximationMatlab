clc;clear;
xPade=[ 0.1:0.2:7  ];
sig=0.000001;

PadeReal=[-1:0.1:5];

RR=30;

dataya=zeros(RR,size(PadeReal,2));

for R=1:RR
    dataya(R,:)=errorTest(xPade,sig,R);
  
     
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
