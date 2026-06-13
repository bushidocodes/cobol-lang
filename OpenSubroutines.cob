identification division.
program-id.   OpenSubroutines.
*> Author: Sean McBride

procedure division.

*> Open Subroutines are really just syntactic sugar around labeled GOTOs
*> That means that the subroutines are all within the same scope
*> and the thread of execution ignores the label and just runs from top
*> to bottom. We can get around this by putting a pseudo Main type function
*> at the top of the procedure division and putting a STOP RUN at the end
*> of the Main subroutine.
*> There are no parameters. Subroutines mutate centralized shared state

Main.
  display "In TopLevel. Starting to run program" end-display
  perform DoFirstThing
  display "Back in TopLevel." end-display.
  *> If we don't STOP RUN here, we fall back through the other function
  *> blocks
  STOP RUN.


DoSecondThing.
  display ">>>>>>>> Now in DoSecondThing." end-display
  perform DoThirdThing.
  display ">>>>>>>> Back in DoSecondThing." end-display.


DoFirstThing.
  display ">>>> Now in DoFirstThing" end-display
  perform DoSecondThing
  display ">>>> Back in DoFirstThing" end-display.


DoThirdThing.
  display ">>>>>>>>>>>> Now in DoThirdThing" end-display.
