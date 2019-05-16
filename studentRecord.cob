identification division.
program-id.  AcceptAndDisplay.
author.  Sean McBride.

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

PROCEDURE DIVISION.
    DISPLAY "Enter student details using template below".
    DISPLAY "Enter - ID,Surname,Initials,CourseCode,Gender"
    DISPLAY "SSSSSSSNNNNNNNNIICCCCG".
    ACCEPT  StudentDetails.
    ACCEPT  CurrentDate FROM DATE YYYYMMDD.
    ACCEPT  DayOfYear FROM DAY YYYYDDD.
    ACCEPT  CurrentTime FROM TIME.
    DISPLAY "Name is ", Initials SPACE Surname.

    DISPLAY "Name 2 ", StudentName.
    DISPLAY "Date is " CurrentDay SPACE CurrentMonth SPACE CurrentYear.
    DISPLAY "Today is day " YearDay " of the year".
    DISPLAY "The time is " CurrentHour ":" CurrentMinute.
    STOP RUN.
