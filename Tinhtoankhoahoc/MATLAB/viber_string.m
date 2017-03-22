M =20;
dx =0.05;
dt = 0.01;
T =5;
t =0;
x = 0:dx:M*dx;
phi0 = sin(2*pi*x);
plot(x,phi0);
phi1 = phi0;
while t<T
    for i = 1: M+1
        if i ==1
            df(i)= (-phi1(2)-2*phi1(i)+phi1(i+1))/(dx*dx);
        elseif i ==M+1
            df(i)= (phi1(i-1)-2*phi1(i)-phi1(M-1))/(dx*dx);
        else
            df(i)= (phi1(i-1)-2*phi1(i)+phi1(i+1))/(dx*dx);
        end
    end
    for i = 1 : M+1
        phi2(i) = 2*phi1(i)-phi0(i)+dt*dt*df(i);
    end
    plot(x,phi2);pause(0.5);
    t = t + dt;
    for i = 1: M+1
        phi0(i) = phi1(i);
        phi1(i) = phi2(i);
    end
end