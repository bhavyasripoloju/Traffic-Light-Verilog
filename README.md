# Traffic Light Controller using Verilog

## Overview
This project implements a Traffic Light Controller using Verilog HDL based on a Finite State Machine (FSM). The controller cycles through three states:

GREEN → YELLOW → RED → GREEN

Only one light is active at a time.

---

## Features
- Verilog HDL implementation
- FSM-based design
- Three traffic light states:
  - Green
  - Yellow
  - Red
- Synchronous state transitions using clock
- Reset functionality
- Simulation verified using GTKWave

---

## State Encoding

| State | Encoding |
|---------|---------|
| Green (s1) | 3'b001 |
| Yellow (s2) | 3'b010 |
| Red (s3) | 3'b100 |

---

## State Transition Diagram

s1 (Green) → s2 (Yellow) → s3 (Red) → s1 (Green)

---

## Files

- `traffic_light.v` - Main Verilog design
- `traffic_light_tb.v` - Testbench
- `waveform.png` - GTKWave simulation output
- `README.md` - Project documentation

---

## Simulation

The design was simulated using GTKWave.
<img width="1200" height="1600" alt="gtkwaves of traffic light" src="https://github.com/user-attachments/assets/ab98af59-0921-4ee9-8c8f-a6a25b846c2b" />


### Expected Sequence

Green → Yellow → Red → Green → Repeat

Only one traffic light remains ON during each state.

---

## Tools Used

- Verilog HDL
- GTKWave
- GitHub

---

## Author

Bhavyasri Poloju
