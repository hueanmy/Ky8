%bai toan mo phong su toa nhiet,
%dx = 0.1 , h= 0.01, D = 0.1 , M =20, N= 20
dx = 0.1; h= 0.01; D=0.2; M =21; N =21; Time = 10;
% Khoi tao
for i = 1:M
    for j = 1:N
        if((i>=9)&&(i<13)&&(j>=9)&&(j<=13))
            T(i,j)=80;
        else
            T(i,j)=25;
        end
    end
end
image(T); pause(1); hold on;  % ve du lieu la ma tran T
t =0;

while (t<=Time)
    %tinh dao ham bac 2
    for i = 1:M
        if(i==1)
            for j =1:N
                if (j==1)
                    dh2(i,j)= (T(i+1,j) + 25 + T(i,j+1)+25 - 4*T(i,j))/dx*dx;
                elseif(j==N)
                    dh2(i,j)=(T(i+1,j)+25+25+T(i,j-1)-4*T(i,j))/(dx*dx);
                else
                    dh2(i,j)= (T(i+1,j)+25+T(i,j+1)+T(i,j-1)-4*T(i,j))/(dx*dx);
            end
            end
        elseif (i==M)
            for j=1:N
                if(j==1)
                    dh2(i,j)= (25+T(i-1,j)+T(i,j+1)+25-4*T(i,j))/dx*dx;
                elseif(j==N)
                    dh2(i,j)= (25+T(i-1,j)+25+T(i,j-1)-4*T(i,j))/dx*dx;
                else
                     dh2(i,j)= (25+T(i-1,j)+25+T(i,j+1)+T(i,j-1)-4*T(i,j))/dx*dx;
                end
            end
        else
            for j = 1:N
                if(j==1)
                       dh2(i,j)= (T(i+1,j)+T(i-1,j)++T(i,j+1)+25-4*T(i,j))/dx*dx;
                elseif(j==N)
                    dh2(i,j)= (T(i-1,j)+T(i-1,j)+25+T(i,j-1)-4*T(i,j))/dx*dx;
                else
                     dh2(i,j)= (T(i+1,j)+T(i-1,j)+T(i,j+1)+T(i,j-1)-4*T(i,j))/dx*dx;
                end
            end
        end
    end
    %PP euler thuan
    for i = 1:M
        for j =1:N
            T(i,j)= T(i,j)+D*h*dh2(i,j);          
        end
    end
    %Tang thoi gian
    t= t+h;
    image(T); pause(0.005); hold on;
      
end
%close(outputVideo);

 
    