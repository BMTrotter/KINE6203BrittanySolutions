function Counter(Number1,Number2)
%Count from one number to the next
%   This function takes two numbers input by the user and displays a
%   counter that counts up by one from the first number to the second
%   number.

a = Number1;
b = Number2;
for CounterOut = (a:1:b)
    disp(CounterOut);
end

