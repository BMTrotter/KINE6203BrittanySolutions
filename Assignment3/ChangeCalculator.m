function ChangeCalculator(Quarters,Dimes,Nickels,Pennies)
%Calculate total amount of change
%   This function allows the user to input a number of quarters, dimes,
%   nickels, and pennies and will calculate the total change amount.

Quarters = Quarters*0.25;
Dimes = Dimes*0.10;
Nickels = Nickels*0.05;
Pennies = Pennies*0.01;

TotalChange = strcat("$",num2str(Quarters+Dimes+Nickels+Pennies))
end

