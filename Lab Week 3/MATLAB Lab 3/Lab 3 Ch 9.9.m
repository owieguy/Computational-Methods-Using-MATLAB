function [averageScores, deviationScores, medianScores, modeScores, partyDecision] = PizzaParty(scores)
   
    averageScores=mean(scores);
    deviationScores=std(scores);
    medianScores=median(scores);
    modeScores=mode(scores);
    partyDecision=averageScores>=65 & modeScores>=75;

end
