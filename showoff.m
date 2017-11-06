
x=[-5:0.1:5];
y=[-6:0.2:6];

[X,Y]=meshgrid(x,y);

Z=testf(X+Y*1i);



surf(real(Z));
xlabel("Real-X");
ylabel("Imag-Y");