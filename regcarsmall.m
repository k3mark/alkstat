load carsmall
X = [Weight, Horsepower, Acceleration];
%approximate MPG by a linear function of X
mdl = fitlm(X,MPG)
%mdl.Coefficients

%approximate MPG by quadratic functions of X
mdl1 = fitlm(X,MPG,'purequadratic')
%mdl1.Coefficients

X1 = [Weight, Horsepower, Weight.*Horsepower,Acceleration];
mdl2 = fitlm(X1,MPG)
%mdl2.Coefficients



