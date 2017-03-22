function [ ] = Thang( a )
switch a
    case {1,3,5,7,8,10,12}
        fprintf('thang %d co 31 ngay:', a)
    case {4,6,9,11}
        fprintf('thang %d co 30 ngay:', a)
    case 2
        fprintf('thang %d co 28 hoac 29 ngay:', a)
end
end

