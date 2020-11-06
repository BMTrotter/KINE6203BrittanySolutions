function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%This function will output the daily and group strength means for each gender in
%this data set
%   This function will use gender and daily strength data to calculate the
%   means for each day in each gender group, as well as the group strength
%   means across all three days for each gender. The daily means will be
%   returned in a matrix for each group. The user should input the Gender,
%   Day1, Day2, and Day3 variable names when calling this function.


MMean1 = mean(Day1(Gender == 'M'));
MMean2 = mean(Day2(Gender == 'M'));
MMean3 = mean(Day3(Gender == 'M'));

maleIsoIndMeans = [MMean1 MMean2 MMean3];

FMean1 = mean(Day1(Gender == 'F'));
FMean2 = mean(Day2(Gender == 'F'));
FMean3 = mean(Day3(Gender == 'F'));

femaleIsoIndMeans = [FMean1 FMean2 FMean3];

maleGroupIsoMean = mean(maleIsoIndMeans);

femaleGroupIsoMean = mean(femaleIsoIndMeans);

end

