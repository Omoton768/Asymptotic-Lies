# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# dp.asm: right/down DP sweep. Outside the search core; shares only the arrays and drawing.
# Module rules: prefix every label with dp_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
