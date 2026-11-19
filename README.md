# Asymptotic Lies

Does Big-O actually predict real cost once memory access patterns come into play?

BFS, DFS, Dijkstra's and A* written in MIPS assembly, solving mazes on a 32×32 grid and animated live on the MARS Bitmap Display. All four share one search core. The only thing that changes between them is the frontier, the structure holding cells waiting to be explored: a queue for BFS, a stack for DFS, and a min-heap for Dijkstra's and A*.

Every algorithm runs on the same mazes, and we compare instructions executed, cells expanded, peak frontier size and cache hit rate using MARS's Instruction Counter and Data Cache Simulator. Two more head-to-heads where both sides are guaranteed the same answer but touch memory differently:

- 0-1 BFS (a deque instead of a heap) vs Dijkstra's when every move costs 0 or 1
- a dynamic-programming sweep vs Dijkstra's on grids where you can only move right or down

**Status:** work in progress. Interactive controls (pick an algorithm, pause, change speed, edit walls) are on the way.

## Running it

1. Get [MARS 4.5](https://github.com/dpetersanderson/MARS/releases).
2. Launch it from the repo root (`java -jar Mars4_5.jar`) so file paths resolve.
3. Open `src/demo.asm`.
4. Tools → Bitmap Display → Connect to MIPS. Leave the default settings (1×1 units, 512×256, base 0x10010000).
5. Tools → Keyboard and Display MMIO Simulator → Connect to MIPS, then click its keyboard area to type controls.
6. Assemble and run.

## Layout

```
src/      MIPS source (demo.asm is the animated build, measure.asm the measurement build)
harness/  tests that diff MARS output against a Python reference
tools/    helper scripts
```

## Credits

Dane Miller and Dylan Didier, COMP 3350 (Computer Organization and Assembly), Auburn University, Fall 2026.
