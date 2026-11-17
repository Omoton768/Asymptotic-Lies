# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# input.asm: keyboard MMIO. Demo build only.
# Module rules: prefix every label with in_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# Check the ready bit (0xFFFF0000, bit 0) before reading 0xFFFF0004. Reading
# clears the bit; reading without checking returns the old key again.
# Only typed characters arrive: no arrow keys, no mouse.
# poll_key (non-blocking), key dispatch, edit-mode cursor.
