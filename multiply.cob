identification division.
program-id.   MultipleTwoNumbers.
author.       Sean McBride

data division.
working-storage section.

01  Num1           pic 9  value zeros.
01  Num2           pic 9  value zeros.
01  Result         pic 99 value zeros.

procedure division.

display "Enter first number: ".
accept Num1.
display "Enter second number: ".
accept Num2.
multiply Num1 by Num2 giving Result.
display "Result is = ", Result.
