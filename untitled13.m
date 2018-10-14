[zA,zB]=VandermondePolyZeros(A,B);

figure(13);
grid on
plot(zA,'o','markersize',8,'color','b');
hold on;
plot(zB,'x','markersize',14,'color','r');
hold on;
plot(zB,'.','markersize',14,'color','r');



xL = xlim;
yL = ylim;
line([0 0], yL,'Color','black');  %x-axis
line(xL, [0 0],'Color','black');  %y-axis

title('zeros and poles of rational polynomial');
lgd=legend('zeros','poles','Location','southwest');
lgd.FontSize=16;
xlabel('real z');
ylabel('imaginary z');

