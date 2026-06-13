identification division.
program-id. CanBuyBooze.
*> Author: Sean McBride

data division.
working-storage section.

01  CustomerAge  pic 999 value zeros.
01  RequiredAge  pic 999 value 21.

procedure division.

    display "Enter customer age: " end-display.
    accept CustomerAge end-accept.
    if CustomerAge greater than or equal to RequiredAge then
        display "Purchase allowed" end-display
    else
        display "Purchase forbidden" end-display
    end-if.
    stop run.
