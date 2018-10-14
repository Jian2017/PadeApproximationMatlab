function [rho_best,rho_error]=errorTestControl_Data_function(xPade,GPadeReal,GPadeImag,sigReal,sigImag,PadeReal,RR)


dataya=zeros(RR,size(PadeReal,2));

for R=1:RR
    dataya(R,:)=errorTest_Data(xPade,GPadeReal,GPadeImag,sigReal,sigImag,PadeReal,R);     
end

rho_best=mean(dataya);
rho_error=std(dataya);

end
