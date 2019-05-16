IDENTIFICATION DIVISION.
PROGRAM-ID.  OpenSubroutines.
AUTHOR.  Sean McBride.

PROCEDURE DIVISION.
*> Open Subroutines are really just syntactic sugar around labeled GOTOs
*> That means that the subroutines are all within the same scope
*> and the thread of execution ignores the label and just runs from top
*> to bottom. We can get around this by putting a pseudo Main type function
*> at the top of the procedure division and putting a STOP RUN at the end
*> of the Main subroutine.
*> There are no parameters. Subroutines mutate centralized shared state
Main.
    DISPLAY "In TopLevel. Starting to run program"
    PERFORM DoFirstThing
    DISPLAY "Back in TopLevel.".
    *> If we don't STOP RUN here, we fall back through the other function
    *> blocks
    STOP RUN.


DoSecondThing.
    DISPLAY ">>>>>>>> Now in DoSecondThing."
    PERFORM DoThirdThing.
    DISPLAY ">>>>>>>> Back in DoSecondThing.".


DoFirstThing.
    DISPLAY ">>>> Now in DoFirstThing"
    PERFORM DoSecondThing
    DISPLAY ">>>> Back in DoFirstThing".


DoThirdThing.
    DISPLAY ">>>>>>>>>>>> Now in DoThirdThing".