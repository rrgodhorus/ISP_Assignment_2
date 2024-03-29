# ISP Assignment 2

This repository is a repy RUNNABLE workspace.
Follow instructions at [Repy Tutorial](https://github.com/SeattleTestbed/docs/blob/master/Programming/RepyV2Tutorial.md) and [SeattleTestBed Build Instructions](https://github.com/SeattleTestbed/docs/blob/master/Contributing/BuildInstructions.md) to initialize a repy runnable workspace.

The 3 parts of ISP Assignment 2 are linked below:

Assignment 2 Part 1: [link](./Assignment%202%20Part%201%20Instructions.pdf)

Assignment 2 Part 2: [link](./Assignment%202%20Part%202%20Instructions.pdf)

Assignment 2 Part 3: [link](./Assignment%202%20Part%203%20Instructions.pdf)


My reference monitor is: [reference_monitor_rr4433.r2py](./reference_monitor_rr4433.r2py)

My attackcases are:
- [attack case 1](./rr4433_attackcase1.r2py)
- [attack case 2](./rr4433_attackcase2.r2py)
- [attack case 3](./rr4433_attackcase3.r2py)
- [attack case 4](./rr4433_attackcase4.r2py)
- [attack case 5](./rr4433_attackcase5.r2py)
- [attack case 6](./rr4433_attackcase6.r2py)
- [attack case 7](./rr4433_attackcase7.r2py)
- [attack case 8](./rr4433_attackcase8.r2py)
- [attack case 9](./rr4433_attackcase9.r2py)

Steps to run all attackcases against all reference_monitors:
- `pyenv shell 2.7.18` (we need Python 2 to run repy)
- `./run_tests.sh`

If an attackcase bypasses a reference monitor (i.e. an output is detected), then results are printed to shell and logged to `testcases_bypassed.txt`.








