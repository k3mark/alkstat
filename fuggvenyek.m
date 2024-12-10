% abrazoljuk a fuggvenyeket
% egyvaltozos
x=-10:0.01:10;
y=x.^2;
figure;
plot(x,x);
x=-10:0.01:10;
y=x.^2;
figure;
plot(x,x);
hold on;
plot(x,y);
hold on
plot(x,x.^3);
hold on;
plot(x,x.^4);
figure;
t=0.1:0.01:10;
plot(t,t.*sin(t)+log(t)+cos(t.*t));
figure;
t=0.1:0.01:10;
plot(t,fv(t));
%minDirekt kereses
tic
t=0.1:0.01:10;
[m,i]=min(fv(t));
toc
mini=m;
loca=0.1+i*0.01;
hold on;
%text(hely,mini,'\bullet');
hold on;
plot(loca,mini,'k.');
%ketvaltozos
x1=0.1:0.01:4;
y1=0.1:0.01:4;
[xx,yy]=meshgrid(x1,y1);
figure;
meshc(xx,yy,fv3(xx,yy));
%minDirekt kereses
tic
[m1,i1]=min(fv3(xx,yy));
[m0,i0]=min(m1);
toc
z0=m0;
x0=0.1+0.01*i0;
y0=0.1+0.01*i1(i0);
hold on;
%meshc(x0,y0,z0,'k.');
scatter3(x0,y0,z0,4);