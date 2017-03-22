%tham so 
L = 30;
dx = 0.1;
Nx = L/dx;
Time = 10;
h = 0.01;
Nt = Time/h;
%khoi tao gia tri ban dau
for i = 1: Nx
    T(i) = 25;
end
X = 0:dx:L-dx;
plot(X, T,'r*--'); hold on;
%tinh toan tai cac buoc
for t = 0: h : Time
    for i = 2 : Nx -1
        T2p(i) = 0.1*(T(i+1) - 2*T(i) + T(i-1))/(dx*dx);
    end
    for i = 1 : Nx
        if (i == 1)
            T(i) = 100;
        elseif (i == Nx)
           T(i) = 25;
        else
            T(i) = T(i) + h*T2p(i);
        end
       
    end
    plot(X,T,'b+--');
end
