identification division.
program-id.   MultipleTwoNumbers.
data division.
working-storage section.
01  Num1           pic 99 usage computational value is zero.
01  Num2           pic 99 usage computational value is zero.
01  Result         pic 999 usage computational value is zero.
procedure division.

display "Enter first number: ".
accept Num1.
display "Enter second number: ".
accept Num2.
multiply Num1 by Num2 giving Result.
display "Result is = ", Result.
