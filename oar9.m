data=[499 525 498 503 501 497 493 496 500 495];
[h,p] = ztest(data,500,3,'Alpha',0.05,'Tail','both')
alpha = 0.05;
x=-3:0.01:3;
plot(x,normpdf(x))
hold on
z_alpha_2 = norminv(1-alpha/2);
area(-z_alpha_2:0.01:z_alpha_2,normpdf(-z_alpha_2:0.01:z_alpha_2),'FaceColor','g')
hold off

data=[60.2, 63.4, 58.8, 63.6, 64.7, 62.5, 66.0, 59.1, 65.1, 62.0];
[h,p] = ttest(data,60,'Alpha',0.05,'Tail','both')
df = 9;
alpha = 0.05;
x=-3:0.01:3;
plot(x,tpdf(x,df))
hold on
t_alpha_2 = tinv(1-alpha/2, df);
area(-t_alpha_2:0.01:t_alpha_2,tpdf(-t_alpha_2:0.01:t_alpha_2,df),'FaceColor','g')
hold off 
