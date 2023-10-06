function [SL, SR] = myRiemann(x,y)
    %Initialize the value of SL and SR
    SL=0;
    SR=0;
    
    %Left Riemann Sum
    for i=1:length(x)-1
        SL=SL+(x(i+1)-x(i))*y(i);
    end
    
    %Right Riemann Sum
    for i=1:length(x)-1
        SR=SR+(x(i+1)-x(i))*y(i+1);
    end
end