function win = NumberGuess (gameNum , userGuess)
   
    GuessInRange=(gameNum-4)<userGuess & userGuess<(gameNum+4);%GuessInRange finds which guesses are in range.
    win = sum(GuessInRange)>=2;%win sums the GuessInRange to discover the total correct guesses
    
end