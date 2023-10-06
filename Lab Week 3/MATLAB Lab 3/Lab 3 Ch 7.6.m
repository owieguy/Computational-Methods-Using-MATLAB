function [yellow,red,blue,green] = DartNumbers(throwX,throwY)
    
    Radius=sqrt(throwX.^2+throwY.^2);%Finds the radius from the center of each dart
    yellow=sum(Radius<=3);
    red=sum(Radius>3 & Radius<=5);
    blue=sum(Radius>5 & Radius<=10);
    green=10-sum(yellow+red+blue);
    
end