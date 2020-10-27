function [Answer] = WooHah(Number1,Number2)
%Indicate even or odd sum by Woo or Hah
%   This function determines whether the sum of two numbers input by the
%   user is even or odd. It will return Woo if the number is even and Hah
%   if the number is odd.

Sum = (Number1+Number2);

if (rem(Sum,2)==0)
    disp("Woo")
else
    disp("Hah")
end

