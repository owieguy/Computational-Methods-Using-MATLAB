
D=0.625;
h=18;
Atank=0.647*(12^2);
H=3.5;
L=242;
ep=0.0005*12; %0.0005 in ft?
g=32.2*12;
Apipe=pi*D^2/4;
v=0.00001664*12^2; %Kinematic Vescosity

KLSE=0.5;
KLGV=10;
KL90=1.5;
KL45=0.4;
KLU=0.08;
HP=[];
QQ=[]
for Q=0.1:0.1:15
    counter=Q
Re=(Q/Apipe)*D/v
%TRe=5000
if Re<=2100
    %F=[F 64/Re;]
    f=64/Re;
    leq=(KLSE+2*KLGV+8*KL90+2*KL45+KLU)*D/f;
    HL=f*(L+leq)*(Q/Apipe)^2/(D*2*g);
    HPc=(Q/Apipe)^2/(2*g)+H+HL-h;
    HP=[HP HPc]
else
f= @(x) (1/sqrt(x)+2*log10((ep/D)/3.7+2.51/(Re*sqrt(x)))); %Creates an anonymous function
    tol=1e-8; %Sets tolerance 
    y=[];
    
        a=0; %Lower bound 
        b=1; %Upper bound 
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
            %F=[F f]
            leq=(KLSE+2*KLGV+8*KL90+2*KL45+KLU)*D/c;
            HL=c*(L+leq)*(Q/Apipe)^2/(D*2*g);
            HPc=(Q/Apipe)^2/(2*g)+H+HL-h;
            HP=[HP HPc]
       
end
            QQ=[QQ Q]
end
plot(QQ,HP)

