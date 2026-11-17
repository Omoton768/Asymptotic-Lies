# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# search.asm: search_init, search_step, path reconstruction.
# Module rules: prefix every label with srch_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# search_step: one expansion per call. $v0 = running / found / no path.
# Open contract items: where state lives between calls, frontier dispatch
# (address table + jalr so every algorithm pays the same), wall value, wall border.
# Matches the Python reference: neighbor order up, down, left, right;
# cost = weight of entering a cell.
