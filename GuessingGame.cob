identification division.
program-id. GuessingGame.
author.     Sean McBride.

data division.
working-storage section.

01 actualNumber            pic  9 value  5.
01 userGuess               pic  9 value  0.
  88 validGuess            value '1' '2' '3' '4' '5' '6' '7' '8' '9'.
01 numberOfGuesses         pic 99 value 00.

procedure division.

StartRun.
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
  add 1 TO numberOfGuesses.
  if validGuess and userGuess is greater than actualNumber display "Too High!".
  if validGuess and userGuess is less than actualNumber display "Too Low!".
