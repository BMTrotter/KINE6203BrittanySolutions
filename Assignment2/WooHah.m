function [Answer] = WooHah(Number1,Number2)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

Sum = (Number1+Number2)

if (rem(Sum,2)==0)
    disp("Woo")
else
    disp("Hah")
end

