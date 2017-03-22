function [] = PPDC(f, a, c, eps)
fb = 1000000;
fprintf('\ta\t \t\tb\t \t\tc\t \t\tfa\t \t\tfb\t \t\tfc\t\n');
while abs(fb)>=eps
    fa = feval(f,a);
    fc = feval(f,c);
    b = (a*fc -c*fa)/(fc-fa);
    fb = feval(f,b);
    if(fb==0)
    elseif (fa*fb<0)
        c= b;
    else 
        a=b;
    end
    fprintf(' %f\t %f\t %f\t %f\t %f\t %f\t \n',a,b ,c,fa,fb, fc);
end
 
    
end


    
    
    
    

   
    
