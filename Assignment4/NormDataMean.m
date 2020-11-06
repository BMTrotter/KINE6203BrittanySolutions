function [DayANormMean] = NormDataMean(Weight,DayA)
%Normalize the strength data for weight and then calculate the daily mean
%from the normalized data
%   This function will first normalize the force data for each subject for
%   one day selected and input by the user. It will then take this
%   normalized data and return the mean for that day. The user should input
%   the Weight and selected day for strength data (Day1, Day2, Day3, for example).

WeightCount = numel(Weight);
WeightNorm = [];
DayANorm = [];
DayANormMean = [];

for WeightIndex = 1:WeightCount
    if Weight(WeightIndex) ~= 0 && ~isnan(DayA(WeightIndex)) && ~isnan(Weight(WeightIndex));
        WeightNorm(end+1) = (DayA(WeightIndex))/(Weight(WeightIndex));
    end
        
end

DayANormMean = mean(WeightNorm);

end

