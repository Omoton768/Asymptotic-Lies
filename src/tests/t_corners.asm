# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# t_corners.asm: smoke test for draw_cell.
#
# Order: .data, imageBuffer first; main; exit; then .include "../render.asm".
# Draw cells 0, 31, 992, 1023 and 33, each a different color. Before running,
# write down which color belongs on which corner and hand-compute each cell's
# expected top-left address.
# Pass when:
#   - the address your code computes (print with syscall 34) matches your hand number
#   - Instruction Statistics shows exactly 64 (8x8) or 49 (7x7) memory ops per call
#   - every color lands where you predicted
