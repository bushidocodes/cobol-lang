identification division.
program-id. GuessingGame.
author.     Sean McBride.

data division.
working-storage section.

01 actualNumber    pic 9  usage computational value is 0.
01 userGuess       pic 9  usage computational value is 0.
  88 validGuess    value 1 thru 9.
01 numberOfGuesses pic 99 usage computational value is 00.
01 currentTime     pic x(21).
01 timeSeed        pic 9(8).

procedure division.

StartRun.
    move function current-date to currentTime
    move currentTime(9:8) to timeSeed
    compute actualNumber =
        function integer(function random(timeSeed) * 9) + 1
    perform GetGuess until userGuess is equal to actualNumber.
    display "Got it in " numberOfGuesses " guesses".
    stop run.

GetGuess.
    move zero to userGuess.
    perform until validGuess
        display "Guess a number between 1 and 9"
        accept userGuess
        if not validGuess display "This was not a number between 1 and 9"
    end-perform.
    add 1 to numberOfGuesses.
    if validGuess and userGuess is greater than actualNumber display "Too High!".
    if validGuess and userGuess is less than actualNumber display "Too Low!".
