load count.dat
x = count(:,1);
y = count(:,2);
%approximate y by a linear function of x using polyfit
pl = polyfit(x,y,1) % Linear
%approximate y by a quadratic function of x using polyfit
pq = polyfit(x,y,2) % Quadratic
figure
scatter(x,y)
hold on
z = linspace(min(x),max(x),100);
plot(z, polyval(pl,z))
plot(z, polyval(pq,z))

figure
%approximate y by a linear and a quadratic function of x using fitlm
scatter(x,y)
hold on
mdl = fitlm(x,y)
a=mdl.Coefficients.Estimate
plot(z,a(1)+a(2)*z,'r-');
mdl1 = fitlm(x,y,'quadratic')
a1=mdl1.Coefficients.Estimate
plot(z,a1(1)+a1(2)*z+a1(3)*z.^2,'b-');