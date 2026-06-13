identification division.
program-id. MultipleTwoNumbers.

data division.
working-storage section.

01  Num1    pic 99  usage computational value is zero.
01  Num2    pic 99  usage computational value is zero.
01  Result  pic 9(4) usage computational value is zero.

procedure division.

    display "Enter first number: " end-display.
    accept Num1 end-accept.
    display "Enter second number: " end-display.
    accept Num2 end-accept.
    multiply Num1 by Num2 giving Result end-multiply.
    display "Result is = ", Result end-display.
    stop run.
