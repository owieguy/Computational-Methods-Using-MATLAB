function adjacentRepeat = HasAdjacentRepeat(inArray)
    i=1;
    for i=2:length(inArray) %For loop that finds length of array and counts through it
        if  inArray(i-1) == inArray(i)%Tests for adjacent repeating characters
            adjacentRepeat=1;
            break %If it find matching characters, break finishes the program
        else
            adjacentRepeat=0; %If no match's are found, adjacentRepeat=0
        end 
    end
end