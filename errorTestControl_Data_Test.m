clc;clear;




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  test data from know spectrum rho  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xPade=[ 0.1:0.2:7  ];
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  data from Monte Carlo simulation  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


[rho_best,rho_error]=errorTestControl_Data_function(xPade,GPadeReal,GPadeImag,sigReal,sigImag,PadeReal,30);


figure(1);

errorbar(PadeReal,rho_best,rho_error,'-s','MarkerSize',10,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
title({ "Pade Approximation Reconstruction of \rho(\omega)",[" with G_M(\omega_n) relative error = "+num2str(sig*100)+"%"]})
xlabel(" real frequency \omega");


