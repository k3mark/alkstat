N = 10^5;

cnt = 0;
ertek=1;
49/16-(49/36)^2
49/36

for i = 1:N    
    for i =1:2
        tortenes=randi(3);
        if tortenes == 1
            ertek = ertek*2;
        elseif tortenes==2
            ertek=ertek/2;
        end
    
    end
    cnt=cnt+ertek;
    ertek=1;
end
cnt/N
