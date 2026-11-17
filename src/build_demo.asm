# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# build_demo.asm: macros with real bodies (DRAW, SLEEP, ...).
#
# Only .macro definitions: no .data, no code. Same macro names as build_measure.asm.
# A macro is text substitution, so its body must be valid for every argument:
# pass registers only, and never pass $a0/$a1 into a body that writes $a0/$a1.
