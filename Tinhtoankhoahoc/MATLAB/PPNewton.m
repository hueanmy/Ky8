function [] = PPNewton(f,xo,x1,eps)
fx = 1000000;
fprintf('\t\tx2 \t\t\tfx\n');
while(abs(fx)>=eps)
    fxo = feval(f,xo);
    fx1 = feval(f,x1);
    dhfx1 = (fx1-fxo)/(x1-xo);
    x2 = x1 - fx1/dhfx1;
    xo = x1;
    x1 = x2;
    fx = feval(f, x2);
    fprintf('\t%f\t %f\t\n ', x2, fx);
end 
end