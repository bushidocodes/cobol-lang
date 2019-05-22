identification division.
program-id.   InLineVsOutOfLine.
author.       Sean McBride.

data division.
working-storage section.

01 NumOfTimes           pic 9 value 5.

procedure division.

Begin.
  display "Starting to run program"
  perform 3 times
    display ">>>>This is an in line Perform"
  end-perform
  display "Finished in line Perform"
  *> Executing a subroutine a set number of times
  perform OutOfLineEG NumOfTimes TIMES
  display "Back in Begin. About to Stop".
  stop run.

OutOfLineEG.
  display ">>>> This is an out of line Perform".
