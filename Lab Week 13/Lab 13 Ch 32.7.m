%Assign values for f and x
f=[6,7,8,9];
x=[15,12,9,6];

%Linearize the values
X=log(x);
F=log(f);
N=length(X);

%Solve the linear equation
B=(N*sum(X.*F)-sum(X)*sum(F))/(N*sum(X.^2)-(sum(X))^2);
A=(sum(F)-B*sum(X))/N;

%Resets the function
beta=B
alpha=exp(A)