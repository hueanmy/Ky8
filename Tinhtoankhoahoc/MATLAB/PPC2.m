function [] = PPC2(f, a, b, eps)
fc = 1000000;
fprintf('\ta\t \t\tb\t \t\tc\t \t\tfa\t \t\tfb\t \t\tfc\t\n');
while abs(fc)>=eps
    c = (a+b)/2;
    fa = feval(f,a);
    fb = feval(f,b);
    fc = feval(f,c);
    if(fc==0)
        
    elseif (fa*fc<0)
        b=c;
    else 
        a=c;
    end
    fprintf(' %f\t %f\t %f\t %f\t %f\t %f\t \n',a,b ,c,fa,fb, fc);
end
  nghiem =c ;
  saiso = fc;
    
end


    
    
    
    

   
    
