function xmax = globalMax(f,w)
%Creates the window that the Monte Carlo will search 
tLow=w(1);
tHigh=w(2);
%N will be the number of random numbers
N=1e6;
%k determines how much the window will be zoomed in
k=[0.005,0.00005]
for j=1:length(k)
    %Generates N random numbers between tHigh and tLow
    g=(tHigh-tLow)*rand(N,1) + tLow;
    %Finds the max value, and it's corresponding t index vlaue
    [xMaxValue, tIndex] = max(f(g(:,1)));
    %Finds the value that yields xmax
    xmax=g(tIndex,1);
    %Assigns the new boundaries for the window
    tLow=xmax-k(j);
    tHigh=xmax+k(j);
end
end