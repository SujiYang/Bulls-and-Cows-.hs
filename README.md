# Bulls-and-Cows-.hs
Simple Haskell implementation of Bulls and Cows(aka. Number Mastermind, Number Baseball..) game language.

The choice of Haskell programming language is for educational purposes. 

## How Bulls and Cows works
Bulls and Cows is an classic code-breaking, paper and pencil game, usually played by two players.
Each player write their own n-digit number (all digits must be different from each other) and try to guess their opponent's number based on the feedback given by the opponent, which is either Bulls or Cows.<br>
If a number matches a digit and in the right position, “bull”<br>
If a number matches a digit but not in the right position, “cow” <br>
Whoever reveals the other's number first wins. <br> 
More information on the game [here](http://en.wikipedia.org/wiki/Bulls_and_cows).

## How to use it
Make suare you have a Haskell Compiler installed on your computer. (You can check [here](https://www.haskell.org/downloads/)).<br>
Then simply launch terminal and hit ghci.
```
user@host$ ghci
```
Once you see Preludec> shows up in the terminal, change the working directory to where you downloaded the file BullsNCows.hs and load the file.<br>For example,
```
Prelude> :cd /Users/username/Desktop/
```
```
Prelude> :load BullsNCows.hs
```
Then hit play to start game.
```
play
```
It will first ask the user to input the desired number of digits to play (ideally 4-6). <br> Once the user inputs the number, it will generate n-digit secret number. <br> Then user starts to guess the secret number and it will give you a feedback. <br> When the number is revealed, the game ends. <br>
It will ask if the user wants to play another round. Hit "y" for another round or "n" to exit the game.

Enjoy!

## To be continued
The code is very simple, more of an exercise than a project.<br>
Many things need to be done, mainly on the coding style. <br>
The project was originally planned to implement two play modes 1) play alone and 2) compete with computer however, only the first mode is included in the code.<br>
Stay tuned for updates.
