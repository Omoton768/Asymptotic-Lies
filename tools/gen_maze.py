"""Write maze files for MARS into src/mazes/.

Format: terrain first, one .word line per grid row (32 values), then start and goal.
Later also .bin (raw little-endian 32-bit words) for loading at runtime.
Locally this can import reference/python/grid.py for its seeded maze generator.
Commit the generated files so nobody else has to run this.
"""
