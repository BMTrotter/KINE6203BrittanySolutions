%%
% Tic Tac Toe Game

% Author: Brittany Trotter

% Date: 10/22/2020

% Description: Code to open and play a game of tic tac toe with the user.

% Developed on Matlab Version R2020b with Microsoft Windows 10 Home
% Version 10.0 (Build 18363)
% %%

x1 = [2 2];
y1 = [0 6];
x2 = [4 4];
y2 = [0 6];
x3 = [0 6];
y3 = [2 2];
x4 = [0 6];
y4 = [4 4];

disp("Welcome to Tic Tac Toe!")

UserPlayInput = input("Would you like to play a game? Tell me: yes or no? ", 's');

while (UserPlayInput == "yes")
    disp(plot(x1,y1,x2,y2,x3,y3,x4,y4));
    hold on
    UserTurnInput = input("Would you like to go first? ",'s');
    if (UserTurnInput == "yes")
        UserTurn = true;
    else
        UserTurn = false;
    end
    
    TLx = [1];
    TLy = [5];
    TCx = [3];
    TCy = [5];
    TRx = [5];
    TRy = [5];
    CLx = [1];
    CLy = [3];
    Cx = [3];
    Cy = [3];
    CRx = [5];
    CRy = [3];
    BLx = [1];
    BLy = [1];
    BCx = [3];
    BCy = [1];
    BRx = [5];
    BRy = [1];
    
    TopLeft = 1;
    TopCenter = 2;
    TopRight = 3;
    CenterLeft = 4;
    Center = 5;
    CenterRight = 6;
    BottomLeft = 7;
    BottomCenter = 8;
    BottomRight = 9;
    
    PossMoves = ["e" "e" "e" "e" "e" "e" "e" "e" "e"];
    
    CheckWin = false;
    
    for i = 1:9
        
        if (UserTurn == true)
            UserComplete = false;
            while(UserComplete == false)
                UserMove = input("Your move! Select from: TopLeft, TopCenter, TopRight, CenterLeft, Center, CenterRight, BottomLeft, BottomCenter, or BottomRight. ");
                if (PossMoves(UserMove)=="e")
                    UserComplete = true;
                    PossMoves(UserMove)="x";
                    if (UserMove == TopLeft)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TLx,TLy,'x','MarkerSize',50));
                    elseif (UserMove == TopCenter)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TCx,TCy,'x','MarkerSize',50));
                    elseif (UserMove == TopRight)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TRx,TRy,'x','MarkerSize',50));
                    elseif (UserMove == CenterLeft)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,CLx,CLy,'x','MarkerSize',50));
                    elseif (UserMove == Center)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,Cx,Cy,'x','MarkerSize',50));
                    elseif (UserMove == CenterRight)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,CRx,CRy,'x','MarkerSize',50));
                    elseif (UserMove == BottomLeft)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BLx,BLy,'x','MarkerSize',50));
                    elseif (UserMove == BottomCenter)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BCx,BCy,'x','MarkerSize',50));
                    elseif (UserMove == BottomRight)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BRx,BRy,'x','MarkerSize',50));
                    end
                
                    if (PossMoves(1)=='x'&PossMoves(2)=='x'&PossMoves(3)=='x')
                        CheckWin = true;
                    elseif (PossMoves(4)=='x'&PossMoves(5)=='x'&PossMoves(6)=='x')
                        CheckWin = true;
                    elseif (PossMoves(7)=='x'&PossMoves(8)=='x'&PossMoves(9)=='x')
                        CheckWin = true;
                    elseif (PossMoves(1)=='x'&PossMoves(4)=='x'&PossMoves(7)=='x')
                        CheckWin = true;
                    elseif (PossMoves(2)=='x'&PossMoves(5)=='x'&PossMoves(8)=='x')
                        CheckWin = true;
                    elseif (PossMoves(3)=='x'&PossMoves(6)=='x'&PossMoves(9)=='x')
                        CheckWin = true;
                    elseif (PossMoves(1)=='x'&PossMoves(5)=='x'&PossMoves(9)=='x')
                        CheckWin = true;
                    elseif (PossMoves(3)=='x'&PossMoves(5)=='x'&PossMoves(7)=='x')
                        CheckWin = true;
                    end
                else
                    disp("That move has been made. Please try again!")    
                end
            end
            if (CheckWin == true)
                disp("Congratulations! You win!")
                break
            end
            
        else
            CPUcomplete = false;
            while(CPUcomplete == false)
                CPUMove = randi(9);
                if(PossMoves(CPUMove)=="e")
                    CPUcomplete = true;
                    PossMoves(CPUMove) = "o";
                    if(CPUMove == 1)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TLx,TLy,'o','MarkerSize',50));
                    elseif(CPUMove == 2)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TCx,TCy,'o','MarkerSize',50));
                    elseif(CPUMove == 3)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,TRx,TRy,'o','MarkerSize',50));
                    elseif(CPUMove == 4)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,CLx,CLy,'o','MarkerSize',50));
                    elseif(CPUMove == 5)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,Cx,Cy,'o','MarkerSize',50));
                    elseif(CPUMove == 6)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,CRx,CRy,'o','MarkerSize',50));
                    elseif(CPUMove == 7)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BLx,BLy,'o','MarkerSize',50));
                    elseif(CPUMove == 8)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BCx,BCy,'o','MarkerSize',50));
                    elseif(CPUMove == 9)
                        disp(plot(x1,y1,x2,y2,x3,y3,x4,y4,BRx,BRy,'o','MarkerSize',50));
                    end
                    
                    if (PossMoves(1)=='o'&PossMoves(2)=='o'&PossMoves(3)=='o')
                        CheckWin = true;
                    elseif (PossMoves(4)=='o'&PossMoves(5)=='o'&PossMoves(6)=='o')
                        CheckWin = true;
                    elseif (PossMoves(7)=='o'&PossMoves(8)=='o'&PossMoves(9)=='o')
                        CheckWin = true;
                    elseif (PossMoves(1)=='o'&PossMoves(4)=='o'&PossMoves(7)=='o')
                        CheckWin = true;
                    elseif (PossMoves(2)=='o'&PossMoves(5)=='o'&PossMoves(8)=='o')
                        CheckWin = true;
                    elseif (PossMoves(3)=='o'&PossMoves(6)=='o'&PossMoves(9)=='o')
                        CheckWin = true;
                    elseif (PossMoves(1)=='o'&PossMoves(5)=='o'&PossMoves(9)=='o')
                        CheckWin = true;
                    elseif (PossMoves(3)=='o'&PossMoves(5)=='o'&PossMoves(7)=='o')
                        CheckWin = true;
                    end
                end
            end
            
            if (CheckWin == true)
                disp("You lose--better luck next time!")
                break
            end
            
        end
        if (UserTurn == true)
            UserTurn = false;
        else
            UserTurn = true;
        end
    end
    if (CheckWin ~= true)&(i == 9)
        disp("It's a tie!")
    end
    
    UserPlayInput = input("Would you like to play again? Tell me: yes or no? ",'s');
    
    hold off
    
    if (UserPlayInput == "no")
        disp("Bummer--see you next time!")
    end
end

