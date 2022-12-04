clearvars
load input

for idx = 1 : length(input1)
    a1 = input1(idx,1):input1(idx,2);
    a2 = input2(idx,1):input2(idx,2); 
    b1(idx) = or(~any(ismember(a1,a2)==0),~any(ismember(a2,a1)==0));
    b2(idx) = or(any(ismember(a1,a2)==1),any(ismember(a2,a1)==1));
end
disp(['solution to problem 1 : ',num2str(sum(double(b1)))]);
disp(['solution to problem 2 : ',num2str(sum(double(b2)))]);