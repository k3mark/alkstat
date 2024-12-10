function [z] = fv3(x,y)
z=x.*sin(x.*y)+log(y+1)+cos(x).*sin(y).*x+y;


end
