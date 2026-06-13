COBC   := cobc
WARN   := -Wall -Wextra -Wcolumn-overflow -Wtruncate -Wunreachable

PROGRAMS := \
	FreeCobol.exe         \
	GraceHopper.exe       \
	OpenSubroutines.exe   \
	RepeatSubroutines.exe \
	StructuredCobol.exe   \
	canBuyBooze.exe       \
	canBuyBoozeImproved.exe \
	multiply.exe          \
	GuessingGame.exe      \
	studentRecord.exe

.PHONY: all build test clean
.DELETE_ON_ERROR:

all: build

# ── Compilation ───────────────────────────────────────────────────────────────

build: $(PROGRAMS)
	@echo "Build complete."

%.exe: %.cob
	$(COBC) -x -free $(WARN) -o $@ $<

StructuredCobol.exe: StructuredCobol.cob
	$(COBC) -x -fixed $(WARN) -o $@ $<

# ── Tests ─────────────────────────────────────────────────────────────────────
#  Each rule pipes test input (where needed) and asserts on expected output.

test: build
	@echo "Running tests..."
	@echo ""
	@echo "No-input programs:"
	@./FreeCobol.exe        | grep -q "Coding Sheet"  && echo "  FreeCobol                  PASS" || (echo "  FreeCobol                  FAIL"; exit 1)
	@./StructuredCobol.exe  | grep -q "Coding Sheet"  && echo "  StructuredCobol             PASS" || (echo "  StructuredCobol             FAIL"; exit 1)
	@./GraceHopper.exe      | grep -q "NAVY"          && echo "  GraceHopper                 PASS" || (echo "  GraceHopper                 FAIL"; exit 1)
	@./OpenSubroutines.exe  | grep -q "DoThirdThing"  && echo "  OpenSubroutines             PASS" || (echo "  OpenSubroutines             FAIL"; exit 1)
	@./RepeatSubroutines.exe | grep -q "out of line"  && echo "  RepeatSubroutines           PASS" || (echo "  RepeatSubroutines           FAIL"; exit 1)
	@echo ""
	@echo "Interactive programs:"
	@printf "025\n"  | ./canBuyBooze.exe         | grep -q "Purchase allowed"   && echo "  canBuyBooze (adult)         PASS" || (echo "  canBuyBooze (adult)         FAIL"; exit 1)
	@printf "017\n"  | ./canBuyBooze.exe         | grep -q "Purchase forbidden" && echo "  canBuyBooze (minor)         PASS" || (echo "  canBuyBooze (minor)         FAIL"; exit 1)
	@printf "025\n"  | ./canBuyBoozeImproved.exe | grep -q "Purchase allowed"   && echo "  canBuyBoozeImproved (adult) PASS" || (echo "  canBuyBoozeImproved (adult) FAIL"; exit 1)
	@printf "017\n"  | ./canBuyBoozeImproved.exe | grep -q "Purchase forbidden" && echo "  canBuyBoozeImproved (minor) PASS" || (echo "  canBuyBoozeImproved (minor) FAIL"; exit 1)
	@printf "06\n07\n" | ./multiply.exe          | grep -q "042"                && echo "  multiply (6x7=42)           PASS" || (echo "  multiply (6x7=42)           FAIL"; exit 1)
	@printf "1\n2\n3\n4\n5\n6\n7\n8\n9\n" | ./GuessingGame.exe | grep -q "Got it in" && echo "  GuessingGame                PASS" || (echo "  GuessingGame                FAIL"; exit 1)
	@printf "1234567SMITH   JRCS10M\n" | ./studentRecord.exe | grep -q "SMITH"  && echo "  studentRecord               PASS" || (echo "  studentRecord               FAIL"; exit 1)
	@echo ""
	@echo "All tests passed."

# ── Cleanup ───────────────────────────────────────────────────────────────────

clean:
	rm -f $(PROGRAMS)
