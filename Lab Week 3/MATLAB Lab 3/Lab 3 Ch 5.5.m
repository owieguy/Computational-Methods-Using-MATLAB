function [oddNumbers, evenNumbers, reverseNumbers] = ReturnNumbers(endValue)
% Write a function that return the odd numbers, even numbers and reverse order 
% numbers between 1 and endValue

% Contains odd numbers between 1 and endValue from smallest number to largest number
oddNumbers = 1:2:endValue;

% Contains even numbers between 1 and endValue from smallest number to largest number
evenNumbers = 2:2:endValue;

% Contains numbers decreasing from endValue to 1
reverseNumbers = endValue:-1:1;

end
