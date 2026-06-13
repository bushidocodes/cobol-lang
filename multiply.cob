identification division.
program-id. MultipleTwoNumbers.

data division.
working-storage section.

01  Num1          pic 99   usage computational value is zero.
01  Num2          pic 99   usage computational value is zero.
01  Result        pic 9(4) usage computational value is zero.
*> An edited picture: Z suppresses leading zeros and the comma is a
*> floating insertion character. MOVE applies the editing.
01  ResultDisplay pic Z,ZZ9.

procedure division.

    display "Enter first number: " end-display.
    accept Num1 end-accept.
    display "Enter second number: " end-display.
    accept Num2 end-accept.
    multiply Num1 by Num2 giving Result end-multiply.
    move Result to ResultDisplay.
    display "Result is = ", ResultDisplay end-display.
    stop run.
