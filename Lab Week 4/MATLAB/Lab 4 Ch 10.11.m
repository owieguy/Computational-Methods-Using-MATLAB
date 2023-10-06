function winnersList = IcecreamVotes(votes)
    icecreamFlavors = ["Chocolate" "Vanilla" "Strawberry"; "Mint" "Cookie dough" "Butterscotch"; "Blueberry" "Raspberry" "Coconut"; "Caramel ribbon" "Pecan praline" "Neopolitan"]
    
    % Use logical indexing with relational expressions to create a logical array 
    voteLogic = votes>=100;
    % Use horzcat to append the winning ice cream flavors and votes
    winnersList = horzcat(icecreamFlavors(voteLogic),votes(voteLogic));
end
