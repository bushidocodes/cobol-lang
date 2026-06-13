identification division.
program-id.   StudentRecord.
*> Author: Sean McBride

data division.
working-storage section.

01 StudentDetails.
  02  StudentId    pic 9(7).
  02  StudentName.
    03 Surname     pic x(8).
    03 Initials    pic xx.
  02  CourseCode   pic x(4).
  02  Gender       pic x.

01 CurrentDate.
  02  CurrentYear  pic 9(4).
  02  CurrentMonth pic 99.
  02  CurrentDay   pic 99.

01 DayOfYear.
  02  filler       pic 9(4).
  02  YearDay      pic 9(3).

01 CurrentTime.
  02  CurrentHour   pic 99.
  02  CurrentMinute pic 99.
  02  filler        pic 9(4).

procedure division.

    display "Enter student details using template below" end-display.
    display "Enter - ID,Surname,Initials,CourseCode,Gender" end-display.
    display "SSSSSSSNNNNNNNNIICCCCG" end-display.
    accept  StudentDetails end-accept.
    accept  CurrentDate from date yyyymmdd end-accept.
    accept  DayOfYear from day yyyyddd end-accept.
    accept  CurrentTime from time end-accept.
    display "Name is ", Initials space Surname end-display.
    display "Name 2 ", StudentName end-display.
    display "Date is " CurrentDay space CurrentMonth space CurrentYear end-display.
    display "Today is day " YearDay " of the year" end-display.
    display "The time is " CurrentHour ":" CurrentMinute end-display.
    stop run.
