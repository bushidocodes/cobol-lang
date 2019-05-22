identification division.
program-id.   OpenSubroutines.
author.       Sean McBride.

procedure division.

*> Open Subroutines are really just syntactic sugar around labeled GOTOs
*> That means that the subroutines are all within the same scope
*> and the thread of execution ignores the label and just runs from top
*> to bottom. We can get around this by putting a pseudo Main type function
*> at the top of the procedure division and putting a STOP RUN at the end
*> of the Main subroutine.
*> There are no parameters. Subroutines mutate centralized shared state

Main.
  display "In TopLevel. Starting to run program"
  perform DoFirstThing
  display "Back in TopLevel.".
  *> If we don't STOP RUN here, we fall back through the other function
  *> blocks
  STOP RUN.


DoSecondThing.
  display ">>>>>>>> Now in DoSecondThing."
  perform DoThirdThing.
  display ">>>>>>>> Back in DoSecondThing.".


DoFirstThing.
  display ">>>> Now in DoFirstThing"
  perform DoSecondThing
  display ">>>> Back in DoFirstThing".


DoThirdThing.
  display ">>>>>>>>>>>> Now in DoThirdThing".
