identification division.
program-id. Hello.

procedure division.

*> This is an example of "Free COBOL" which relieves the need for line numbers and the use of column 7 control characters
FirstParagraph.
    display "Coding Sheet".
    display "This is a really really long line that requires continuation across several lines. However, the editor now can wrap this naturally. Doesn't this look much more sane?".
    stop run.
