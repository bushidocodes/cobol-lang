IDENTIFICATION DIVISION.
PROGRAM-ID.  InLineVsOutOfLine.
AUTHOR.  Sean McBride.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NumOfTimes           PIC 9 VALUE 5.

PROCEDURE DIVISION.
Begin.
    DISPLAY "Starting to run program"
    PERFORM 3 TIMES
       DISPLAY ">>>>This is an in line Perform"
    END-PERFORM
    DISPLAY "Finished in line Perform"
    *> Executing a subroutine a set number of times
    PERFORM OutOfLineEG NumOfTimes TIMES
    DISPLAY "Back in Begin. About to Stop".
    STOP RUN.

OutOfLineEG.
    DISPLAY ">>>> This is an out of line Perform".
