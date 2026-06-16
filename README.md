# 4-Bit Register using Verilog
# Overview

A Register is a fundamental sequential circuit used to store binary data. It is built using multiple flip-flops and is widely used in processors, memory units, and digital systems.

This project implements a 4-bit Register using Verilog HDL with control signals for clock, reset, and load (write enable).

# Working Principle

The register stores a 4-bit input value and updates its output based on control signals.

# Inputs:
clk → Clock signal (synchronization)
reset → Clears the register (asynchronous)
load → Enables writing new data
d[3:0] → 4-bit input data
# Output:
q[3:0] → Stored 4-bit value

Behavior
Condition	Operation
reset = 1	Clear register (q = 0000)
load = 1	Load input (q = d)
load = 0	Hold previous value

# Design Approach
Built using D Flip-Flop behavior
Uses non-blocking assignments (<=)
Edge-triggered using posedge clk
Includes asynchronous reset

# Key Observations
Output updates only on clock rising edge
Data is stored only when load = 1
Output remains unchanged when load = 0
Reset clears the register immediately
