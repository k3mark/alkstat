%regr height-weight
n=10;
x=[160 166 170 175 178 179 180 185 190 198];
y=[ 55  70  65  80  75  85  80  92  85  97];
%approximate y by a linear function of x
%using the theorem
mx=mean(x);
my=mean(y);
vx=mean(x.^2)-mx^2;
vy=mean(x.^2)-my^2;
mxy=mean(x.*y)-mx*my;  %cov
a=mxy/vx
b=my-mx*a
figure
plot(x,y,'r*');
hold on
t=150:0.01:210;
plot(t,a*t+b,'b-');
hold on

%using the Matlab program fitlm
X = [x];  %linear
mdl1 = fitlm(X,y)
%mdl1.Coefficients

%approximate y by a quadratic function of x
X = [x',x'.^2];  %quadratic
mdl2 = fitlm(X,y')
a=mdl2.Coefficients.Estimate
plot(t,a(1)+a(2)*t+a(3)*t.^2,'m-');

