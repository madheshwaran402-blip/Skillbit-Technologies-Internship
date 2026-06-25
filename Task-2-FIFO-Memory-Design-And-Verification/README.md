FIFO Memory Design and Verification

Overview

This project implements a synchronous First-In, First-Out (FIFO) memory using Verilog HDL. The FIFO stores data in the order it is received and outputs it in the same order. The design includes read and write operations, full and empty status flags, functional simulation, and RTL synthesis using Xilinx Vivado.

⸻

Objectives

* Design an 8-bit synchronous FIFO using Verilog HDL.
* Implement write and read operations.
* Generate Full and Empty status flags.
* Verify functionality through simulation.
* Perform RTL synthesis using Xilinx Vivado.

⸻

Features

* 8-bit Data Width
* 8 Memory Locations
* Synchronous Read and Write
* Read and Write Pointers
* Full Flag
* Empty Flag
* Behavioral Simulation
* RTL Synthesis

⸻

FIFO Specifications

Parameter	Value
Data Width	8 bits
FIFO Depth	8 Locations
Clock	Single Clock
Reset	Active High
Type	Synchronous FIFO

⸻

Block Diagram

                +----------------------+
 Data In ------>|                      |
 Write Enable ->|                      |
                |       FIFO           |----> Data Out
 Read Enable -->|                      |
                |                      |
 Clock -------->|                      |
 Reset -------->|                      |
                +----------------------+
                  |               |
               Full Flag      Empty Flag

⸻

Project Structure

FIFO_Memory_Design/
│
├── src/
│   ├── fifo.v
│   └── fifo_tb.v
│
├── screenshots/
│   ├── waveform.png
│   ├── rtl.png
│   ├── synthesized_rtl.png
│   └── utilization.png
│
├── report/
│   └── FIFO_Report.pdf
│
├── README.md
└── LICENSE

⸻

Software Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

⸻

Simulation

The design was simulated to verify:

* Write operation
* Read operation
* FIFO behavior
* Full flag generation
* Empty flag generation

⸻

Learning Outcomes

* FIFO Memory Architecture
* Verilog RTL Coding
* Memory Design
* Pointer Management
* Digital Verification
* RTL Synthesis

⸻

Future Enhancements

* Simultaneous Read and Write
* Overflow and Underflow Detection
* Parameterized FIFO Depth
* Asynchronous FIFO Design
* FPGA Hardware Implementation

⸻

Author

Madheshwaran Maruthamuthu

B.E. Electronics Engineering (VLSI Design and Technology)

PSNA College of Engineering and Technology
