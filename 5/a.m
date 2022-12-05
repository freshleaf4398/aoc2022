clearvars
load input
load input2

%% problem 1
for idx = 1 : 9
    cart{idx} = num2cell(char(input{idx}));
end

for idx = 1 : length(input2)
    number_box = input2(idx,1);
    cartindex_before = input2(idx,2);
    cartindex_after = input2(idx,3);
    box2move = cart{cartindex_before}(1:number_box); %CrateMover 9000
    cart{cartindex_before}(1:number_box) = [];
    
    b = cart{cartindex_after};
    b = flip(b);
    c = length(b);
    
    for jdx = 1 : number_box
        b{c+jdx} = box2move{jdx};
    end
    
    b = flip(b);
    cart{cartindex_after} = b;
end

for idx = 1 : length(cart)
    res{idx} = cart{idx}(1);
end
disp(['answer problem 1: ',join(string(res))])

%% problem 2
for idx = 1 : 9
    cart{idx} = num2cell(char(input{idx}));
end

for idx = 1 : length(input2)
    number_box = input2(idx,1);
    cartindex_before = input2(idx,2);
    cartindex_after = input2(idx,3);
    box2move = flip(cart{cartindex_before}(1:number_box)); %CrateMover 9001
    cart{cartindex_before}(1:number_box) = [];
    
    b = cart{cartindex_after};
    b = flip(b);
    c = length(b);
    
    for jdx = 1 : number_box
        b{c+jdx} = box2move{jdx};
    end
    
    b = flip(b);
    cart{cartindex_after} = b;
end

for idx = 1 : length(cart)
    res{idx} = cart{idx}(1);
end
disp(['answer problem 2: ',join(string(res))])