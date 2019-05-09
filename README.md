# Bulls-and-Cows-.hs
Simple Haskell implementation of Bulls and Cows(aka. Number Mastermind, Number Baseball..) game language.

The choice of Haskell programming language is for educational purposes. The code is very simple, more of an exercise than a project.

## How Bulls and Cows works
Bulls and Cows is an classic code-breaking, paper and pencil game, usually played by two players.
Each player write their own n-digit number (all digits must be different from each other) and try to guess their opponent's number. Whoever reveals the other's number first wins. More information on the game [here] (http://en.wikipedia.org/wiki/Bulls_and_cows).

## How to use it
Make suare you have a Haskell Compiler installed on your computer. (You can check [here] https://www.haskell.org/downloads/).
Then simply launch terminal and hit ghci.
```
user@host$ ghci
```
This will launch Prelude>, then move to the directory where you downloaded the file BullsNCows.hs. and load the file. For example, (for mac users)
```
Prelude> :cd /Users/user/Desktop/
```
```
Prelude> :load BullsNCows.hs
```
Then hit play to start game.
```
play
```
I will first ask the user to input the desired number of digits to play (ideally 4-6).
Once the user inputs the number, it will generate n-digit secret number.
Then user start to guess the secret number and it will give you a feedback. When the number is revealed, the game ends.
It will ask if the user wants to play another round. 
Hit "y" for another round or "n" to exit the game.

Enjoy!

## To be continued
Many things need to be done, mainly on the coding style.
The project was originally planned to implement two play mode 1) play alone and 2) compete with computer however, only the first mode is included in the code. Stay tuned for updates!
