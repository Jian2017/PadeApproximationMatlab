N=100;
zNpoints=[1:.125:2]*1i;
u=testf(zNpoints);

c=continued_fraction_coefficient(zNpoints,u);

[A,B]=polyAB(zNpoints,c);

figure()
plot(roots(poly(fliplr(A))),'o');
hold on;
plot(roots(poly(fliplr(B))),'x');
xlabel("real");
ylabel("imaginary");


x=[-5:0.2:5];
y=[-6:0.5:6];

[X,Y]=meshgrid(x,y);

Z=testfff(zNpoints,c,X+Y*1i);
figure();
surf(real(Z));
xlabel("Real-X");
ylabel("Imag-Y");

disp(["maximum error |f(z)-Pade(z)|="+ max(abs(testf(zNpoints)-testfff(zNpoints,c,zNpoints)))]);