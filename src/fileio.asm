# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# fileio.asm: file I/O (syscalls 13-16).
# Module rules: prefix every label with fio_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# Relative paths resolve from the folder MARS was launched from, not this file's.
# Check for fd < 0. Maze .bin = raw little-endian words. Load/save maze, write results.
