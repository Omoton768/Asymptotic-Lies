# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# queue.asm: ring-buffer queue (BFS frontier). Explicit head and tail.
# Module rules: prefix every label with q_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# Buffer lives in data.asm.
