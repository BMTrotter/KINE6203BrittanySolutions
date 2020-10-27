function StringInfo(String)
%Return string length and first and last characters of a string
%   This function will compute the length of a string and return the
%   length, as well as the first character of the string and the last
%   character of the string.
Length = strlength(String)
FirstLetter = extract(String,1)
LastLetter = extract(String,strlength(String))
end

