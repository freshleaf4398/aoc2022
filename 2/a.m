clearvars
load input
for idx = 1 : 2500
    if input1(idx,1) == "A" && input1(idx,2) == "X"
        res(idx) = 3+1;
    elseif input1(idx,1) == "B" && input1(idx,2) == "Y"
        res(idx) = 3+2;
    elseif input1(idx,1) == "C" && input1(idx,2) == "Z"
        res(idx) = 3+3;
    elseif input1(idx,1) == "A" && input1(idx,2) == "Y"
        res(idx) = 6+2;
    elseif input1(idx,1) == "B" && input1(idx,2) == "Z"
        res(idx) = 6+3;
    elseif input1(idx,1) == "C" && input1(idx,2) == "X"
        res(idx) = 6+1;
    elseif input1(idx,1) == "A" && input1(idx,2) == "Z"
        res(idx) = 0+3;
    elseif input1(idx,1) == "B" && input1(idx,2) == "X"
        res(idx) = 0+1;
    elseif input1(idx,1) == "C" && input1(idx,2) == "Y"
        res(idx) = 0+2;
    end
end
disp(['answer problem 1 : ',num2str(sum(res))]);

for idx = 1 : 2500
    if input1(idx,1) == "A" && input1(idx,2) == "X"
        res(idx) = 3+0; 
    elseif input1(idx,1) == "B" && input1(idx,2) == "Y"
        res(idx) = 2+3; 
    elseif input1(idx,1) == "C" && input1(idx,2) == "Z"
        res(idx) = 1+6;
    elseif input1(idx,1) == "A" && input1(idx,2) == "Y"
        res(idx) = 1+3; 
    elseif input1(idx,1) == "B" && input1(idx,2) == "Z"
        res(idx) = 3+6;
    elseif input1(idx,1) == "C" && input1(idx,2) == "X"
        res(idx) = 2+0; 
    elseif input1(idx,1) == "A" && input1(idx,2) == "Z"
        res(idx) = 2+6; 
    elseif input1(idx,1) == "B" && input1(idx,2) == "X"
        res(idx) = 1+0; 
    elseif input1(idx,1) == "C" && input1(idx,2) == "Y"
        res(idx) = 3+3; 
    end
end
disp(['answer problem 2 : ',num2str(sum(res))]);
