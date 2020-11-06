%%
% assignment4

% Author: Brittany Trotter

% Date: 11/5/2020

% Description: Code to analyze, compare, and manipulate isometric strength data
% collected over three separate days

% Developed on Matlab Version R2020b with Microsoft Windows 10 Home
% Version 10.0 (Build 18363)
% %%
%-------------------------------------------------

%This function is used to import the data from the specified file in a
%comma separated column vector format.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv");

%This function will calculate the daily means for each gender and display
%them in a matrix for each gender (maleIsoIndMeans & femaleIsoIndMeans). It
%will also return the total means for each group (maleGroupIsoMean &
%femaleGroupIsoMean).
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)

%This function will examine the strength data for each subject across two
%days input by the user and return a matrix of all SubjectIDs that had an
%increase in strength data from one day to the next.
day1toDay2 = dayComparer(SubjectID,Day1,Day2)
day2toDay3 = dayComparer(SubjectID,Day2,Day3)

%The NormDataMean function will take normalize the isometric strength data
%for weight and then calculate the mean for each day from this normalized
%data. The user should input the Weight variable and the day which
%they would like to calculate the mean for.
normDay1mean = NormDataMean(Weight,Day1)
normDay2mean = NormDataMean(Weight,Day2)
normDay3mean = NormDataMean(Weight,Day3)

%The following code will export the above data into a single csv file.
writematrix(maleIsoIndMeans,"iso_results.csv")
writematrix(femaleIsoIndMeans,"iso_results.csv","WriteMode","append")
writematrix(maleGroupIsoMean,"iso_results.csv","WriteMode","append")
writematrix(femaleGroupIsoMean,"iso_results.csv","WriteMode","append")
writematrix(day1toDay2,"iso_results.csv","WriteMode","append")
writematrix(day2toDay3,"iso_results.csv","WriteMode","append")
writematrix(normDay1mean,"iso_results.csv","WriteMode","append")
writematrix(normDay2mean,"iso_results.csv","WriteMode","append")
writematrix(normDay3mean,"iso_results.csv","WriteMode","append")

