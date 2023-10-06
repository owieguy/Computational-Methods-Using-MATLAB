function result = mypolyval(c,x)
%Flips the vlaue of c, and finds it's length
c=fliplr(c);
result=[];
P=0;
%Sums the values for any lenght of x and c
for i=1:length(x)
    for j=1:length(c)
        d=c(j)*x(i)^(j-1);
        P=P+d;
    end
    %Stores the y values for each x vlaue
    result=[result P];
    P=0;
end
end