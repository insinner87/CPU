# CPU

This repository is a small Verilog-based 8-bit CPU design created as an educational project for learning digital logic, processor architecture, and HDL simulation.

The project is intentionally simple and modular. At the moment, it focuses on the building blocks of a CPU and demonstrates a working ALU implementation with a testbench to verify its behavior.

## What is in this project

The repository currently contains:

- A basic 8-bit ALU in `src/alu.v`
- A small simulation testbench for the ALU in `tb/alu_tb.v`
- Placeholder CPU modules for future expansion in `src/`
- A top-level project structure for building a more complete processor over time

## Project structure

```text
CPU/
├── README.md
├── out/
├── src/
│   ├── alu.v
│   ├── control_unit.v
│   ├── cpu_top.v
│   ├── instruction_decoder.v
│   ├── pc.v
│   └── register_file.v
└── tb/
    ├── alu_tb.v
    └── cpu_top_tb.v
```

## ALU module

The ALU in `src/alu.v` is an 8-bit arithmetic and logic unit. It supports the following operations:

- Addition
- Subtraction
- Bitwise AND
- Bitwise OR
- Bitwise XOR
- Bitwise NOT
- Left shift by 1
- Right shift by 1

The operation is selected using a 3-bit control input `op`:

```verilog
3'b000 : a + b
3'b001 : a - b
3'b010 : a & b
3'b011 : a | b
3'b100 : a ^ b
3'b101 : ~a
3'b110 : a << 1
3'b111 : a >> 1
```

## Testbench

`tb/alu_tb.v` is a simple testbench that instantiates the ALU and applies a few sample values to exercise the design. It is useful for learning how to simulate hardware in Verilog and observe internal signal behavior.

## CPU structure

The source folder also includes placeholder files for the rest of a CPU:

- `control_unit.v` - control logic for instruction handling
- `instruction_decoder.v` - decode logic for commands/instructions
- `pc.v` - program counter
- `register_file.v` - register storage
- `cpu_top.v` - top-level CPU module

These files are part of the overall design plan, but the project is still in an early stage and not yet a complete processor implementation.

## How to simulate

This project is intended for simulation with an HDL simulator such as Icarus Verilog.

Example:

```bash
iverilog -g2012 -o out/alu_tb.vvp tb/alu_tb.v src/alu.v
vvp out/alu_tb.vvp
```

## Status

This repository is a learning-focused CPU project. The ALU is implemented and tested, while the rest of the CPU is still being developed or documented as future work.

## Goal

The goal of the project is to understand the core ideas behind CPU design, including:

- data path design
- control logic
- register storage
- instruction execution
- hardware simulation and verification

This project is best viewed as a starting point for building a more complete 8-bit processor over time.
