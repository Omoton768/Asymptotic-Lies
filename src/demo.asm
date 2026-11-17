# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# demo.asm: entry point for the animated, interactive build.
#
# Launch MARS from the repo root. Connect Bitmap Display (defaults: 1x1 units,
# 512x256, base 0x10010000). Once input exists, also connect the Keyboard and
# Display MMIO Simulator.
#
# Required order in this file (MARS lays memory out in the order it reads it):
#   1. .include "build_demo.asm"    macros only, emits nothing; must precede every macro use
#   2. .data, then imageBuffer: .space 0x80000    always the first data
#   3. .include a maze from mazes/, then .include "data.asm"    data only
#   4. .text, .globl main, main:    main's code is the first instruction in .text
#      (MARS starts at the first .text instruction, not at main)
#   5. .include every module after main's code: render, input, stats, fileio,
#      search, queue, stack, heap, deque, dp
#
# main owns order and state (init, the frame loop, exit). Modules own mechanics.
# Frame loop: poll key -> dispatch -> if running, search_step up to k times
#             -> update stats -> SLEEP -> repeat
