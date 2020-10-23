function [difference] = BrittSubtract(number1,number2)
%This function takes in two numbers as inputs and returns the difference.
%will always subtract smaller number from larger number

if number1>=number2
    number1-number2
elseif number2>=number1
    number2-number1
end

