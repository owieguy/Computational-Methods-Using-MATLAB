% year is randomly generated between 1948 and 2019.
year = randi ( [1948 , 2019] , 1);

% summerOlympicsYear should be assigned logical variable true if the year
% is greater than or equal to 1948 and divisible by 4
summerOlympicsYear =(year>1948)&(mod(year,4)==0)