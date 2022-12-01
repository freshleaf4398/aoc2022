clearvars
[x,t,r] = xlsread('1.xls')
res = 0;
hasil = 0;
for idx = 1 : 2259
    if isnan(x(idx))
        if res > hasil
            hasil = res;
        end
        res = 0;
        continue
    end
    res = res + x(idx);
end

hasil2 = [];
for idx = 1 : 2259
    if isnan(x(idx))
        hasil2 = [hasil2 res];
        res = 0;
        continue
    end
    res = res + x(idx);
end
hasil2(1) = [];
hasil2 = sort(hasil2,'descend');
hasil2 = sum(hasil2(1:3));
disp(['problem 1 answer: ',num2str(hasil)])
disp(['problem 2 answer: ',num2str(hasil2)])
