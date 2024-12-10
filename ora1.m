figure;
x=linspace(-3,3,30);
y=x;
[xx,yy]=meshgrid(x,y);
z=xx.^2-yy.^2;
subplot(1,3,3);
axis([-3 3 -3 3 -20 20]);
grid on;
xlabel('x'); ylabel('y'); %zlabel('f(x,y)');
hold on;
mesh(x,y,z);
colormap([0 0 0]);
%set(gca,'XTick',[0 2 4],'FontSize',16);
%set(gca,'YTick',[-1 1 3 ],'FontSize',16);
%set(gca,'ZTick',[ 0 0.2],'FontSize',16);
set(gca,'DataAspectRatio',[3 3 6]);
title('x^2-y^2');
rotate3d