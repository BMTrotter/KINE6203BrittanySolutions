function Counter(Number1,Number2)
%Count from one number to the next
%   This function takes two numbers input by the user and displays a
%   counter that counts up by one from the lower number to the higher number.

a = min(Number1,Number2);
b = max(Number1,Number2);
for CounterOut = (a:1:b)
    disp(CounterOut);
end

