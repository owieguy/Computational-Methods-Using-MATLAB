f=@(x) (-(1.25-0.01*x)*200*exp(0.017*x)+0.45*x);
    %Establishes the golden ratio
    s=(1+sqrt(5))/2;
    xLow=0;
    xHigh=70;
    err=1;
    tol=1e-6;
    while err>tol
         %Establishes the window size 
        dx=abs(xHigh-xLow);
        %Cuts the window into 3 smaller windows
        x1=xLow+dx/s^2;
        x2=xHigh-dx/s^2;
        %Checks if the minimum is in the first window
        if f(x1)>f(x2)
            xLow=x1;
        elseif f(x1)<f(x2)
            xHigh=x2;
        %Breaks the code if there is an error
        else
            disp('Error, run the code again')
            break
        end
        %Finds the value for T and finds the error
        T=max(x1,x2);
        err=(dx/s^2);
    end