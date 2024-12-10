load accidents
x = hwydata(:,14); % Population of states
y = hwydata(:,4); % Accidents per state
%approximate y by a linear function of x
%using the theorem
a = corr(x,y) / std(x) * std(y);
b = mean(y) - mean(x)*a;
scatter(x,y)
hold on 
plot(x, x*a + b)
xlabel('Population of state')
ylabel('Fatal traffic accidents per state')
title('Linear regression relation between accidents & population')
grid on

%using the Matlab program fitlm
X = [x];  %linear
mdl1 = fitlm(X,y)
%mdl1.Coefficients
a0=mdl1.Coefficients.Estimate
t=0:1:3.5*10^7;
figure
scatter(x,y);
hold on
plot(t,a0(1)+a0(2)*t,'r-');
hold on

%approximate y by a quadratic function of x
X = [x';x'.^2];  %quadratic
mdl2 = fitlm(X',y)
%mdl2.Coefficients
a1=mdl2.Coefficients.Estimate
plot(t,a1(1)+a1(2)*t+a1(3)*t.^2,'b-');

%approximate y by a quadratic function of x
mdl3 = fitlm(x,y,'quadratic');   %quadratic2
a2=mdl3.Coefficients.Estimate

%approximate y by a quadratic function of x using robust loss function
mdl4 = fitlm(x,y,'quadratic','RobustOpts','huber');   %quadratic3
a3=mdl4.Coefficients.Estimate