identification division.
program-id.   StudentRecord.
author.       Sean McBride.

data division.
working-storage section.

01 StudentDetails.
  02  StudentId       PIC 9(7).
  02  StudentName.
    03 Surname      PIC X(8).
    03 Initials     PIC XX.
  02  CourseCode      PIC X(4).
  02  Gender          PIC X.

01 CurrentDate.
  02  CurrentYear     PIC 9(4).
  02  CurrentMonth    PIC 99.
  02  CurrentDay      PIC 99.

01 DayOfYear.
  02  FILLER          PIC 9(4).
  02  YearDay         PIC 9(3).

01 CurrentTime.
  02  CurrentHour     PIC 99.
  02  CurrentMinute   PIC 99.
  02  FILLER          PIC 9(4).

procedure division.

display "Enter student details using template below".
display "Enter - ID,Surname,Initials,CourseCode,Gender"
display "SSSSSSSNNNNNNNNIICCCCG".
accept  StudentDetails.
accept  CurrentDate from date YYYYMMDD.
accept  DayOfYear from day YYYYDDD.
accept  CurrentTime from time.
display "Name is ", Initials space Surname.

display "Name 2 ", StudentName.
display "Date is " CurrentDay space CurrentMonth space CurrentYear.
display "Today is day " YearDay " of the year".
display "The time is " CurrentHour ":" CurrentMinute.
stop run.
