function x = GaussJordan(A,b)

% Pivot code
    N=length(A);
    ii=0;
    for k=1:(N-1)
        %Finds the maximum value in the column, not including the rows that have already been sorted. 
        [m,i]=max(abs(A([k:N],k))); 
        
        %Pivots A
        A([(ii+1),(i+ii)],:)=A([(i+ii),(ii+1)],:);
        %Pivots b
        b([(ii+1),(i+ii)],:)=b([(i+ii),(ii+1)],:);
        
        ii=ii+1;
    end
   
    
% Gauss-Jordan code
    Aa=[A b]; %Creats N by N+1 matrix
    
    %Forward elimination 
    for c=1:N
	    Aa(c,:)=Aa(c,:)/Aa(c,c);
	    for r=(c+1):N
		    Aa(r,:)=Aa(r,:)-Aa(r,c)*Aa(c,:);
	    end
    end
    
    %Backward elimination
    for c=N:-1:2
	    for r=(c-1):-1:1
            Aa(r,:)=Aa(r,:)-Aa(r,c)*(Aa(c,:)/Aa(c,c));
        end
	end
    
    %Assinges x to the updated b, N+1 column
	x=Aa(:,(N+1));
end