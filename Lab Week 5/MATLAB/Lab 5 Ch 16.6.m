function [scoreForYellow,message] = DartGame(yellow)

    %Assign scores based on number of darts in the yellow
    if yellow<=1
        scoreForYellow=0;
    elseif yellow==2
        scoreForYellow=10;
    elseif yellow<5
        scoreForYellow=20;
    elseif yellow<9
        scoreForYellow=50;
    else
        scoreForYellow=100;
    end
    
    %Assign money payout based on scores
    switch scoreForYellow
        case 100
            message="Congratulations, you get $100";
        case 50
            message="Congratulations, you get $50";
        case 20
            message="Congratulations, you get $10";
        case 10
            message="You did not win any money, but you get free ice cream!";
        case 0
            message="You did not win any money. Wish you better luck next time!";
    end
end
