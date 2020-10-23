function [TotalChange] = ChangeCalculator(Quarters,Dimes,Nickels,Pennies)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

Quarters = Quarters*0.25;
Dimes = Dimes*0.10;
Nickels = Nickels*0.05;
Pennies = Pennies*0.01;

TotalChange = strcat("$",num2str(Quarters+Dimes+Nickels+Pennies))
end

