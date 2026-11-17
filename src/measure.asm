# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# measure.asm: entry point for the measurement build. No drawing, input or stats.
#
# Same order as demo.asm, except:
#   - line 1 includes "build_measure.asm" (same macro names, empty bodies)
#   - keep imageBuffer first anyway, so every array sits at the same address as in demo
#   - include only search, queue, stack, heap, deque, dp, fileio
#
# main: read program args ($a1 = argv), search_init, call search_step until done,
#       report counters, exit.
# Headless: java -jar Mars4_5.jar nc ic src/measure.asm pa <algorithm>
# Reset Instruction Counter / Data Cache Simulator before every GUI run.
