% f = 0;
% s = 0;
% n = 10000;
% 
% 
% for i=1:n
%     while true 
%         if rand() <.2
%             f = f+1
%             break;
%         end
%         if rand() <.3
%             s = s+1
%             break;
%         end
%     end
% end
% 
% f/n

%20 piros 30 fehér -> 10 húzunk
%p(4 piros)
p1 =nchoosek(20,4)* nchoosek(30,6)/nchoosek(50,10)
% X: piros golyóük száma ~ hyge(50,20,10)
p2 = hygepdf(4, 50,20,10)

% kocka 10x x:6os dobások száma
% P(X = 3)?
binopdf(3,10,1/6)

%dobások átlaga
% N = 10^4;
% s = 0;
% for i = 1:N
%     s = s+ randi(6);
% end
% s/N


% legalább egy 6 os 2 dobókockáva
% N = 10^4
% sum = 0;
% 
% 
% for i = 1:N
%     while true
%         d = randi(6,1,2) ;
%         sum = sum +1;
%         if d(1) == 6| (d(2)==6);
%             break;
%         end
%     end
% end
% 
% sum/N







