A=[1 2 3; 0 -1 0; 1 1 1]
a=[0 pi sqrt(2)]
B=[A;a]
C=B(1:3,:)
B*A
C+A
C.*A
b=A*a'
x=A\b
b1=a*A
x1=b1/A
v=[1 2 3]
u=[4 8 5]
u*v'
u'*v
u.*v
u.^v
R=rand(4,5)
R1=R([1 2],[4 5])