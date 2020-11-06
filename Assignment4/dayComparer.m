function [DayAtoDayB] = dayComparer(SubjectID,DayA,DayB)
%Compares the data from each subject across two days to identify any increases in each subject's data
%between the selected days
%   The dayComparer function examines the daily strength data for each
%   subject and returns the subject ID for every subject that had an
%   increase in strength between the two days input by the user. User
%   inputs the variable SubjectID and two days (Day1 & Day2 or Day2 &
%   Day3, for example).

DayAtoDayB = strings;

SubjectCount = numel(SubjectID);

for SubjectIndex = 1:SubjectCount
    if (DayA(SubjectIndex)>DayB(SubjectIndex))
        if DayAtoDayB == ""
            DayAtoDayB(1) = (SubjectID(SubjectIndex));
        else
            DayAtoDayB(end+1) = (SubjectID(SubjectIndex));
        end
    end
end    

end

