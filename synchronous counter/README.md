# Synchronous Counter

## Description

This project implements a simple 4-bit Synchronous Counter using Verilog HDL.

In a synchronous counter, all flip-flops receive the same clock signal.

The counter counts from 0 to 15 and then starts again from 0.

## Features

- 4-bit counter
- Counts from 0 to 15
- Common clock for all flip-flops
- Reset operation
- Simple and easy design

## Inputs

| Input | Description |
|------|-------------|
| `clk` | Clock signal |
| `reset` | Resets the counter to 0 |

## Output

| Output | Description |
|--------|-------------|
| `q` | 4-bit counter output |

## Counting Sequence

The counter follows:

    0000
    0001
    0010
    0011
    0100
    0101
    0110
    0111
    1000
    1001
    1010
    1011
    1100
    1101
    1110
    1111
    0000

## Working

All flip-flops are connected to the same clock.

At every positive edge of the clock, the counter increases by 1.

When the counter reaches 15, the next count is 0.

## Files

- `synchronous_counter.v` - Main Verilog code
- `synchronous_counter_tb.v` - Testbench
- `output.vcd` - Simulation waveform
- `README.md` - Project documentation

## How to Run

Compile:

    iverilog -o counter_sim synchronous_counter.v synchronous_counter_tb.v

Run:

    vvp counter_sim

Open waveform:

    gtkwave output.vcd

## Expected Result

The counter increases by 1 on every positive clock edge.

## Conclusion

The 4-bit synchronous counter successfully counts from 0 to 15 using a common clock signal.