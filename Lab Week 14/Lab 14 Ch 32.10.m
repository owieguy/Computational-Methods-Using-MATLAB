%Assign values to rho and r, convert r to m
r =1000*[0,800,1200,1400,2000,3000,3400,3600,4000,5000,5500,6370];
rho=[13000,12900,12700,12000,11650,10600,9900,5500,5300,4750,4500,3300];

%Creates anonymous function, with ro as the variable
f=@(r,x) 4*pi*x*r^2
m=0
    for i=1:(length(r)-1)
        %Trapezoid rule
        m=m+(r(i+1)-r(i))*(f(r(i),rho(i))+f(r(i+1),rho(i+1)))/2
    end