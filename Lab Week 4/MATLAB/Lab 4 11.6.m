function [flipFlop, lowerTriangle] = FlipFlopArray(A)
    % flip array A from left to right, then upside down
    flipFlop = flipud(fliplr(A));
    
    % store the lower triangular portion of flipFlop
    lowerTriangle = tril(flipFlop);
end
