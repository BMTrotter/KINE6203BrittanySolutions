function [Average, LetterGrade] = GradeAverage(Grade1,Grade2,Grade3)
%Takes three grades and returns the average of the grades and the
%corresponding letter grade.

Average = (Grade1+Grade2+Grade3)/3

if Average>=90
    LetterGrade=A
elseif (80>=Average)&(Average<90)
    LetterGrade=B
elseif (70>=Average)&(Average<80)
    LetterGrade=C
elseif (60>=Average)&(Average<70)
    LetterGrade=D
elseif (Average<59)
    LetterGrade=F
end
    
    
 
end

