function [ ] = GiaiPTB2(a,b,c)

d = b^2-4*a*c;
if d>0 
    disp('PT co 2 nghiem');
    x1 = (-b - d^(1/2))/(2*a)
    x2 = (-b + d^(1/2))/(2*a)
elseif d==0
    disp('PT co nghiem kep');
    x12 = -b/(2*a)
else 
    disp('PT vo nghiem!');
end

end

