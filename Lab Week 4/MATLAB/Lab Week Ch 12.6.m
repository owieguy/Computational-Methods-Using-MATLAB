function sortedRevenue = MaxRevenueSort(numItemsSold)
   itemPrice = [25 15 30; 20 35 50; 20 30 45];
   
   % Calculate Revenue
   revenue = itemPrice.*numItemsSold;
   
   %Sort Revenue in descending order
   revenueRow=revenue(:); %flatten revenue
   sortedRevenueRow=sort(revenueRow,'descend'); %sort revenue in decending order
   sortedRevenue=reshape(sortedRevenueRow,3,3)'; %reshape sortedRevenueRow into a 3x3 array
   
end
