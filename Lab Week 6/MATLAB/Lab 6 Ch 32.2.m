%Creats an anonomus function for distance from (2,0). 
%By subtracting 3 we make a distace of 3 from the point at a 0 crossing. 
%So we can use root finding to find that point
    f= @(x) sqrt((x-2)^2+x^4)-3; %Distance from (2,0) -3
    a=0; %Lower bound guess
    b=2; %Upper bound guess
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
            %If there is a sign change, it means the 0 is betwen 
            % a and c, so we set b=c
			b=c;
		end
		d=(b-a)/2; %d is the maximum error
		c=(a+b)/2; %c is halfway between our two points
    end
    x=c