    f= @(x) (1/sqrt(x)+2*log((ep/D)/3.7+2.51/(TRe*sqrt(x)))); %Creates an anonymous function
    tol=1e-8; %Sets tolerance 
    y=[];
    for i=0:.2:11 %Counts from 0 to 11 increments of .2
        a=i; %Lower bound guess
        b=i-.2; %Upper bound guess
        c=(a+b)/2; %Halfway between Upper and Lower bound
        tol=1e-8; %Sets tolerance
        d=abs(b-a)/2; %Maximum error of our guess
            while d>tol
                %Checks if their is a sign change, 0 crossing
		        if f(a)*f(c)>0 
                    %If there is not a sign change, the 0 is not between 
                    % a and c, so we set a=c
		    	    a=c; 
                else 
                    %If there is a sign change, it means the 0 is between 
                    % a and c, so we set b=c
		    	    b=c; 
		        end
		        d=abs(b-a)/2; %d is the maximum error
		        c=(a+b)/2; %c is halfway between our two points
            end     
            y=[y,c]; %Makes an array adding up different values of c
        end
    end
 
