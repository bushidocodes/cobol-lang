identification division.
program-id.   StudentRecord.
author.       Sean McBride.

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

    display "Enter student details using template below".
    display "Enter - ID,Surname,Initials,CourseCode,Gender".
    display "SSSSSSSNNNNNNNNIICCCCG".
    accept  StudentDetails.
    accept  CurrentDate from date yyyymmdd.
    accept  DayOfYear from day yyyyddd.
    accept  CurrentTime from time.
    display "Name is ", Initials space Surname.
    display "Name 2 ", StudentName.
    display "Date is " CurrentDay space CurrentMonth space CurrentYear.
    display "Today is day " YearDay " of the year".
    display "The time is " CurrentHour ":" CurrentMinute.
    stop run.
