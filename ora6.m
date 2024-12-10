%fejek számának dobása
N = 10^4
fej = 0;

for i = 1:N
    if randi(0:1)
        fej = fej + 1 +sum(randi(0:1,1,2));
    else
        fej = fej +randi(0:1);
    end
end


% fej/N
% 
% n = 10^6;
% s = 0;
%  for i=1:n
%     if rand()<1/2
%         s=s+1;
%         if rand()<1/2
%             s=s+1;
%         end
%      if rand()<1/2
%             s=s+1;
%         end
% else
% if rand()<1/2
%             s=s+1;
%         end
%     end
% end

format rat
k = [4 2 1 0.5 0.25]
p = [1 2 3 2 1]/9
dot(k,p)
ex = sum(k .* p)
ex2 = sum(k.^2 .* p) %második momuntum

varx = ex2-ex^2

N = 10
current = 1

for i=1:N
    switch randi(3)
        case 1
            current = current*2
        case 2
            current = current/2
        case 3
            current = current
    end
    
end

current














