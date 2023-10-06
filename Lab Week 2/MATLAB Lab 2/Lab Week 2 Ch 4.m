% The weight of each material is in tons and is between 1 and 100 tons.
% You can generate N random numbers in the interval (a,b) with the formula 
% r = a + (b-a).*rand(N,1).

weightArray = (1 + (100 -1)*(rand (10,1)))'

dailyMaterialSum = MaterialSum(weightArray)

function dailyMaterialSum = MaterialSum (weightArray)
% Write a function that sums the elements of the weightArray 
% and prints the result to 2 decimal points
dailyMaterialSum =round(sum(weightArray),2)
end

