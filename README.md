# Verilog Learning Process

A hands-on Verilog HDL learning repository covering **logic gates, combinational circuits, arithmetic circuits, timing experiments, and testbenches**.

This repository is intentionally different from the more structured [DSD_verilog](https://github.com/prabhatkulkarni/DSD_verilog) repository: this one records the learning and experimentation process, while DSD_verilog is the cleaner project collection.

## Current contents

- `gates/` — basic logic-gate experiments
- `combinational/` — combinational-design work
- `testbench/` — simulation/testbench material
- `cla_tb` — carry-lookahead-adder related work
- `ripple_tb` — ripple-carry-adder related work
- `delay_and` — gate-delay experiment

## Tools

- Verilog HDL
- ModelSim / HDL simulation
- Linux development environment

## Learning progression

```text
Logic Gates
    ↓
Combinational Logic
    ↓
Adders
    ↓
Testbenches & Simulation
    ↓
Timing / Delays
    ↓
Sequential RTL
    ↓
FPGA Design
```

## Next improvements

- Standardize source and testbench filenames
- Add explicit `*.v` extensions where appropriate
- Group designs and testbenches consistently
- Add self-checking testbenches
- Record expected vs. observed simulation results

> This repository is a learning log. For polished RTL projects, see [DSD_verilog](https://github.com/prabhatkulkarni/DSD_verilog).
