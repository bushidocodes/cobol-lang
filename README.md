# COBOL Samples

This repo was built researching the COBOL language while writing [this blog post](https://www.bushido.codes/cobol-lang).

## Setup

Install GnuCOBOL on a Debian-based system:

```sh
sudo apt-get install gnucobol
```

Compile and run a free-form source file:

```sh
cobc -xj -free myfile.cob
```

Use `-fixed` instead of `-free` for `StructuredCobol.cob`.

## Examples

| File | Concepts demonstrated |
|------|-----------------------|
| [FreeCobol.cob](FreeCobol.cob) | Free-form layout vs. fixed-format; long-line handling |
| [StructuredCobol.cob](StructuredCobol.cob) | Traditional fixed-format with column numbers and continuation |
| [canBuyBooze.cob](canBuyBooze.cob) | Working-storage, basic IF/ELSE conditional |
| [canBuyBoozeImproved.cob](canBuyBoozeImproved.cob) | Level-88 condition names as named boolean values |
| [multiply.cob](multiply.cob) | ACCEPT input, MULTIPLY arithmetic verb, edited PIC for output (zero suppression + comma insertion) |
| [GuessingGame.cob](GuessingGame.cob) | Level-88 input validation, PERFORM UNTIL loop, paragraph calls |
| [OpenSubroutines.cob](OpenSubroutines.cob) | Paragraphs as open subroutines, PERFORM, STOP RUN scoping |
| [RepeatSubroutines.cob](RepeatSubroutines.cob) | Inline PERFORM N TIMES vs. out-of-line paragraph repeat |
| [studentRecord.cob](studentRecord.cob) | Hierarchical data records, ACCEPT FROM DATE/TIME |
| [GraceHopper.cob](GraceHopper.cob) | Multi-line DISPLAY output (ASCII art tribute) |
