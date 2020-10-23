function [Answer] = FindPrime(Number)
%FindPrime will specify whether a number is prime
%   User inputs a number and the function will output a logical value
%   specifying whether the number is prime or not (1 is prime, 0 is not
%   prime).

if (isprime(Number))
    Answer = true
else
    Answer = false
end

