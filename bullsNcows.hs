-- bullsNcows.hs
-- Suji Yang

import System.Random (randomRIO)

-- Version 1: play alone
-- Computer generates random n-digit number and the user guess the number


-- computer generates n-digit of random number
-- the user specify the number of digits

randomDigits :: Int -> IO [Int]
randomDigits 0 = return []
randomDigits n = do
     r <- randomRIO (0,9)
     rs <- randomDigits (n-1)
     if (elem r rs) == False
          then return (r:rs)
          else randomDigits n


-- Bulls: right number and right position

countBulls :: [Int] -> [Int] -> Int
countBulls [] _ = 0
countBulls _ [] = 0
countBulls (n:ns) (g:gs) = if g == n
                        then 1 + countBulls ns gs
                        else countBulls ns gs
    

-- Cows: right number but wrong position
-- countCows =  countElem - countBulls

countElem :: [Int] -> [Int] -> Int
countElem [] _ = 0
countElem _ [] = 0
countElem (n:ns) gs = if elem n gs
                           then 1 + countElem ns gs
                           else countElem ns gs

    
-- diffOK
-- gives True iff the integers in the list are different from each other

diffOK :: [Int] -> Bool
diffOK [] = True
diffOK [_] = True
diffOK guess = if elem (head guess) (tail guess)
                     then False
                     else diffOK (tail guess)
                     
-- lenOK
-- give True iff the length of the list equals the number of digits

lenOK :: [Int] -> Int -> Bool
lenOK guess len =  if length guess == len
                        then True
                        else False


play :: IO ()
play = do
    let go pnum = do
        print "What number of digits to play? (e.g. 4)"
        n <- getLine
        nn <- randomDigits (read n::Int) -- nn is [Int]
        --putStrLn $ show nn
        print "Alright, I'm ready."
        print "What's your guess? (e.g. [1,2,3,4])"
        let go' gnum = do
            g <- getLine
            if diffOK (read g::[Int]) == True
                then do
                    if lenOK (read g::[Int]) (read n::Int) == True
                        then do
                            let b = countBulls (read g::[Int]) nn -- b is Int
                            let e = countElem (read g::[Int]) nn -- e is Int
                            let countCows = e - b
                            if b /= (read n::Int)
                                then do
                                    putStrLn $ show b ++ " Bull(s) " ++ show countCows ++ " Cow(s)"
                                    print "Another guess?"
                                    go' (gnum+1)
                               
                                else do
                                    putStrLn $ show b ++ " Bulls!"
                                    print "Another round? (y/n)"
                                    let go'' = do
                                        let previous = putStrLn $ "Your Score: " ++ n ++ "-digit " ++ show gnum ++ " guess"
                                        r <- getLine
                                        if r == "y"
                                            then do
                                                previous
                                                go (pnum+1)
                                                
                                            else if r == "n"
                                                then do
                                                    --putStrLn $ "Total number of play: " ++ show pnum
                                                    --previous
                                                    putStrLn $ "Your Score: " ++ n ++ "-digit " ++ show gnum ++ " guess"
                                                    print "Bye!"
                                                    return ()
                                                else do
                                                    print "Type again: (y/n)"
                                                    go''
                                    go''
                                    
                        else do
                            putStrLn $ "Type again: The number of digits now playing is " ++ n ++ "."
                            go' gnum
                                                
            else do
                print "Type again: All digits must be different from each other. (e.g. [1,2,3,4])"
                go' gnum
        go' 1
    go 1

-- exception handling, when I miss type sth I get (Exception: Prelude.read: no parse),
-- instead of exception;
-- print the answer(random number that's generated)
-- ask user to type again

-- (or is there anyway to enable 'delete' while inputing for getLine?)


