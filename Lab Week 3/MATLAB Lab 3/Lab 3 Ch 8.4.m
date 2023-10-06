function parcelShip=CanShip(parcelLengths, parcelWidths, parcelHeights, parcelWeights)% Define function CanShip
   
    parcelGirth=parcelLengths+2*parcelWidths+2*parcelHeights;
    parcelShip=(parcelGirth<165 & parcelWeights<150);
    
end
