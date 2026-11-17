# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# render.asm: everything that knows about pixels.
# Module rules: prefix every label with rend_ (all included files share one
# label namespace). Private data only; anything the search touches goes in
# data.asm. If this file has a .data section, it must END in .text, or the code
# after its .include lands in the data segment with no error.
#
# draw_cell(index, color): $a0 = cell index 0-1023, $a1 = color 0x00RRGGBB.
#   Leaf. Clobbers $t and $a only. Label prefix dc_.
# Later: fill/clear, draw_maze (non-leaf: save $ra and any $s it uses),
#   draw_path, cursor, cell_color.
# Never read the framebuffer to find out state. Redraw from the state arrays.
