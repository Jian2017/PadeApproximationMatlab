function f=testSpectrumFunction(x)

% if x<0
%     f=0;
% else
%     f=x/((x-1)^4+0.09);
% end


% f=real(  1/(   (   (x-2 )/0.3    )^2+1)                     );



% if x<0.5
%     f=0;
% elseif x<2.5
%     f=1;
% else
%     f=0;
% end




% triangle
% if x<0
%     f=0;
% elseif x<1
%     f=x;
% elseif x<2
%     f=2-x;
% else
%     f=0;
%     






    
% double triangle
% if x<0
%     f=0;
% elseif x<1
%     f=x;
% elseif x<1.5
%     f=(2-x);
% elseif x<2.5
%     f=x-1;
% elseif x<3
%     f=9-3*x;
% else
%     f=0;


%hemisphere
% R=1;
% x0=1.2 ;
% if x<x0-R
%     f=0;
% elseif x<x0+R
%     f=sqrt(R^2-(x-x0)^2);
% else
%     f=0;



%Gaussian curve

% mu=2;
% sigma=0.1;
% f=exp(-0.5*((x-mu)/sigma)^2)/(sigma*sqrt(2*pi));


%Lorentz curve
x0=2;
gamma=0.4;

f=1/(pi*gamma*(1+((x-x0)/gamma)^2));




%two Lorentz curve
% x1=2;
% gamma1=0.01;
% 
% x2=1;
% gamma2=0.1;
% 
% f=1/(pi*gamma1*(1+((x-x1)/gamma1)^2))+1/(pi*gamma2*(1+((x-x2)/gamma2)^2));





% if x<0
%     f=0;
% else
%     f=0.2*x/((x-1)^4/0.1+0.09) + sqrt(  (1-(x-2)^2/4 )  ) *0.3;
% end











    
end
