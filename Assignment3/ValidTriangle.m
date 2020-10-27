function [LogicalValue] = ValidTriangle(Array1)
%ValidTriangle will specify whether the lengths of sides of a triangle
%equate to a valid triangle
%   User will input a single 3-element array with each element representing
%   the side of a triangle.

a = Array1(1,1);
b = Array1(1,2);
c = Array1(1,3);

H = max(Array1);

if (H == a)
    TwoSides = b+c;
elseif (H == b)
    TwoSides = a+c;
elseif (H == c)
    TwoSides = a+b;
end

if (H > TwoSides)
    LogicalValue = true;
else
    LogicalValue = false;
end

end

