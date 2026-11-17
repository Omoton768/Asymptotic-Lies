# Asymptotic Lies (grid world) | COMP 3350 | Dane Miller, Dylan Didier
# AI use: [fill in before submitting]
#
# data.asm: every array and variable the search touches. Data only.
#
# Declared above main in both entry files, so demo and measure put everything
# at the same addresses. terrain comes from the maze file, not from here.
#
# To declare (sizes come from the contract):
#   gscore, parent           1024 words each
#   frontier buffers         queue, stack, heap, deque
#   search state             whatever must survive between search_step calls
#   counters                 expanded, frontier max
