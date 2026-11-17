# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# stats.asm: live stats as text in the MMIO display. Demo build only.
# Module rules: prefix every label with st_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# Char 12 clears the display. Char 7 moves the cursor (X in bits 20-31,
# Y in bits 8-19). Check transmitter ready (0xFFFF0008) before every write.
# number-to-ASCII, put_str_at, draw_stats (changed fields only).
