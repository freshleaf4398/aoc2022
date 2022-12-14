clearvars
load input

for idx = 1 : length(input)
    a = num2cell(char(input(idx)));
    comp1 = string(a(1:length(a)/2));
    comp2 = string(a(length(a)/2+1:length(a)));
    b = [];
    for jdx = 1 : length(comp1)
        for kdx = 1 : length(comp2)
            if comp1(jdx)==comp2(kdx)
                b = [b comp1(jdx)];
            end
        end
    end
    c(idx) = char2num(b(1));
end
disp(['solution problem 1 : ',num2str(sum(c))])

clearvars -except input
for idx = 1 : length(input)/3
    comp1 = string(num2cell(char(input(idx*3-2))));
    comp2 = string(num2cell(char(input(idx*3-1))));
    comp3 = string(num2cell(char(input(idx*3))));
    b = [];
    for jdx = 1 : length(comp1)
        for kdx = 1 : length(comp2)
            for ldx = 1 : length(comp3)
                if comp1(jdx)==comp2(kdx) && comp1(jdx)==comp3(ldx) && comp2(kdx)==comp3(ldx)
                    b = [b comp1(jdx)];
                end
            end
        end
    end
    c(idx) = char2num(b(1));
end
disp(['solution problem 2 : ',num2str(sum(c))])

function y = char2num(x)
    if isstrprop(x,'lower')
        y = double(char(x))-96;
    else
        y = double(char(x))-38;
    end
end
