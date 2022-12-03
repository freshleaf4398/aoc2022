clearvars
load input

for idx = 1 : length(input)
    b = [];
    mausholds = num2cell(char(input(idx)));
    comp1 = string(mausholds(1:length(mausholds)/2));
    comp2 = string(mausholds(length(mausholds)/2+1:length(mausholds)));
    for jdx = 1 : length(comp1)
        for kdx = 1 : length(comp2)
            if comp1(jdx)==comp2(kdx)
                b = [b comp1(jdx)];
            end
        end
    end
    shroom(idx) = b(1);
    if isstrprop(shroom(idx),'lower')
        c(idx) = double(char(shroom(idx)))-96;
    else
        c(idx) = double(char(shroom(idx)))-38;
    end
end
disp(['solution problem 1 : ',num2str(sum(c))])

clearvars -except input
for idx = 1 : length(input)/3
    b = [];
    comp1 = string(num2cell(char(input(idx*3-2))));
    comp2 = string(num2cell(char(input(idx*3-1))));
    comp3 = string(num2cell(char(input(idx*3))));
    for jdx = 1 : length(comp1)
        for kdx = 1 : length(comp2)
            for ldx = 1 : length(comp3)
                if comp1(jdx)==comp2(kdx) && comp1(jdx)==comp3(ldx) && comp2(kdx)==comp3(ldx)
                    b = [b comp1(jdx)];
                end
            end
        end
    end
    shroom(idx) = b(1);
     if isstrprop(shroom(idx),'lower')
        c(idx) = double(char(shroom(idx)))-96;
    else
        c(idx) = double(char(shroom(idx)))-38;
    end
end
disp(['solution problem 2 : ',num2str(sum(c))])