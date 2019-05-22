identification division.
program-id. CanBuyBooze.
author.     Sean McBride

data division.
working-storage section.

01  CustomerAge           pic 999 value zeros.
01  RequiredAge           pic 999 value 21.

01 Age pic 999.
  02 Child      value 0 thru 12.
  02 Teenager   value 13 thru 19.
  02 Adult      value 21 thru 999.

procedure division.

display "Enter customer age: ".
accept CustomerAge.
if CustomerAge greater than or equal to RequiredAge then
  display "Purchase allowed"
else
  display "Purchase forbidden!"
end-if.
