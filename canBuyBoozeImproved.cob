       identification division.
       program-id. CanBuyBooze.
       author. Sean McBride
       
       data division.
       working-storage section.
       01 CustomerAge pic 999 value zeros.
         88 Child value 0 thru 12.
         88 Teenager value 13 thru 19.
         88 Adult value 21 thru 999.
       
       procedure division.

       display "Enter customer age: ".
       accept CustomerAge.

       if Adult then
           display "Purchase allowed"
       else
           display "Purchase forbidden!"
       end-if.
