
weightInPounds = randi([100,260],1)
MET = randi([1, 16],1)
timeInMinutes = randi([30,120],1)

% Convert weight from pounds to kilograms
weight =weightInPounds./2.2

% Convert time from minutes to hours
time = timeInMinutes./60

% Calculate calories burned
caloriesBurned = weight*MET*time
