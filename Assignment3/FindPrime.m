function [Answer] = FindPrime(Number)
%FindPrime will specify whether a number is prime
%   User inputs a number and the function will output a logical value
%   specifying whether the number is prime or not where 1(true) is prime and 0(false) is not.

if (isprime(Number))
    Answer = true;
else
    Answer = false;
end

