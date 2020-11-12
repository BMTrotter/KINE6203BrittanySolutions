function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Brittany Trotter
%
%         DUE: November 12, 2020
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user
 
fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): ','s'); 

%BUG 12.1 (this issue occurs twice in the code): While running the code, 
%if a user entered anything other than a number, MATLAB would throw an 
%error message 'unrecognized function or variable'. To combat this, I 
%convert the user input to a string and then attempt to convert it to a 
%number. If it cannot be converted to a number it returns as false. This 
%condition has been added to the corresponding while loop to cause the 
%program to print a 'not valid input' message to the screen and prompt the user for new input.
[level,TF] = str2num(level);

%BUG 3: Changed the logical to && instead of || because with || the
%statement will always result in the display of the 'not valid' message
%(discovered while running the code). Changing to && allows for exclusion 
%of any numbers that are not 1, 2, or 3 but still allows for 1,2, or 3 to be 
%considered valid input.
while TF==0 || (level ~= beginner && level ~= moderate && level ~= advanced) 
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ','s');
[level,TF] = str2num(level);
end

% set highest secret number based on level selected

%BUG 1: Found bug by error message "Incorrect use of '=' operator". Changed
%'level = beginner' to 'level == beginner'.
if level == beginner                     

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
%BUG 9: Received error message not recognizing variable 'advancedhighest',
%corrected typo in variable name (needed capitalized 'h' to match 'advancedHighest').
highest = advancedHighest;
end

% randomly select secret number between 1 and highest for level of play

%BUG 10: While running the code, secretNumber was always selecting the same
%number so changed the equation to get a random number generated in the
%correct range for each level.
secretNumber = randi(highest);    

% initialize number of guesses and User_guess

%BUG 11: numOfTries needs to start at 0, not 1, otherwise the number of
%tries will always be one more than the actual number because it is
%starting at 1 prior to the first user guess. I found this while running
%the code and getting an extra number of tries each time I completed the
%game.
numOfTries = 0;
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

%BUG 2: Found missing 'end' for while loop through error message 'At least
%one END missing'. End added to end of script as the user needs to keep
%guessing until the userGuess does not equal secretNumber in order to complete the game.
while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
%BUG 12.2: While running the code, if a user entered anything other than a
%number, MATLAB would throw an error message 'unrecognized function or
%variable'. To combat this, I convert the user input to a string and then
%attempt to convert it to a number. If it cannot be converted to a number
%it returns as false. This condition has been added to the corresponding
%while loop to cause the program to print a 'not valid input' message to 
%the screen and prompt the user for new input.
userGuess = input('','s');
[userGuess,TF] = str2num(userGuess);
%BUG 4: userGuess cannot be set to 'greater than or equal' to highest or it
%will not allow the User to guess the highest number (changed to 'greater than'). Found this bug while
%running the code on beginner level as I guessed 10 and received a message that my guess was
%not valid.
while TF == 0 || (userGuess < 1 || userGuess > highest)

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('','s');

[userGuess,TF] = str2num(userGuess);

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

%BUG 5: While reviewing this portion of code to solve a different issue
%found while running the code, I saw the equality sign was opposite of the
%message to display ('userGuess > secretNumber' would print that the guess 
%was too low) so I flipped it to represent 'userGuess < secretNumber' to 
%match the return message of the guess being too low.
if userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
%BUG 6: While running the code I would only ever get the congratulatory
%message, regardless of my guess. While reviewing this portion of code, I 
%found no condition for userGuess equals the secretNumber, only regarding numOfTries. 
%I added this and the win on first try condition to display the unique message to guessing 
%correctly on the first try.
elseif userGuess == secretNumber && numOfTries == 1
    fprintf('\nLucky You!  You got it on your first try!\n\n');
elseif userGuess == secretNumber
%BUG 7: When running the code the congratulations message would always
%display 'You got [secretNumber] in Game Over tries'. Changed the format of the
%following line which contained '...' to adjust this and include
%numOfTries.
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', secretNumber,numOfTries);
end

end % of guessing while loop//Moved original comment to end of first while loop (part of Bug 2)

%BUG 8: Moved this line of code out of the while loops to print after all
%guessing and results messages have been given and the game has truly
%ended. Found this while running the code as it would display after each
%guess when the game was still going.
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
% end of game