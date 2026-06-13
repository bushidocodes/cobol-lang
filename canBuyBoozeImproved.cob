identification division.
program-id. CanBuyBoozeImproved.
*> Author: Sean McBride

data division.
working-storage section.

01 CustomerAge pic 999 value zeros.
  88 Child    value 0 thru 12.
  88 Teenager value 13 thru 20.
  88 Adult    value 21 thru 999.

procedure division.

    display "Enter customer age: " end-display.
    accept CustomerAge end-accept.
    if Adult then
        display "Purchase allowed" end-display
    else
        display "Purchase forbidden" end-display
    end-if.
    stop run.
