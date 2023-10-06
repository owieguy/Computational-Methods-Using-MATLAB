function [L, b, x] = myl(n)
    %Create zero matrices L, b and x
    L=zeros(n,n);
    b=zeros(n,1);
    x=zeros(n,1);
    
    
    %Fill matrix b with a column from 1 to n
    %Fill matrix L with a lower triangle
    for i=1:n
        b(i,1)=i;
        for j=1:n
            if i>=j
                L(i,j)=i+j;
            end
        end
    end
    
    
    %Solves the lower triangle using numerical methods
    for j=1:1:n
	    x(j)=(b(j)-L(j,1:n)*x(1:n))/L(j,j);
    end
end