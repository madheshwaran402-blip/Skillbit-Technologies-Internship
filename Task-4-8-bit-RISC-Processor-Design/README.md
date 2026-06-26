8-Bit RISC Processor Design using Verilog

Overview

This project implements a simplified 8-Bit RISC (Reduced Instruction Set Computer) Processor using Verilog HDL. The processor demonstrates the fundamental stages of instruction execution, including instruction fetch, decode, execution, and write-back. The complete design was simulated and synthesized using Xilinx Vivado.

⸻

Objectives

* Design a simple RISC processor using Verilog HDL.
* Implement the core modules of a processor.
* Execute arithmetic and logical instructions.
* Simulate processor functionality using Xilinx Vivado.
* Perform RTL synthesis and hardware analysis.

⸻

Features

* Program Counter (PC)
* Instruction Memory
* Register File (8 × 8-bit Registers)
* Arithmetic Logic Unit (ALU)
* Control Unit
* Processor Top Module
* Functional Testbench
* Behavioral Simulation
* RTL Synthesis

⸻

Processor Architecture

                   +----------------+
                   | Program Counter|
                   +--------+-------+
                            |
                            ▼
                 +----------------------+
                 | Instruction Memory   |
                 +----------+-----------+
                            |
                      16-bit Instruction
                            |
          +-----------------+-----------------+
          |                                   |
          ▼                                   ▼
  +---------------+                  +----------------+
  | Control Unit  |                  | Register File  |
  +-------+-------+                  +--------+-------+
          |                                   |
          +-----------------+-----------------+
                            ▼
                      +-----------+
                      |    ALU    |
                      +-----------+
                            |
                            ▼
                     Write Back Result

⸻

Instruction Set

Opcode	Instruction	Operation
0000	ADD	Addition
0001	SUB	Subtraction
0010	AND	Bitwise AND
0011	OR	Bitwise OR
0100	XOR	Bitwise XOR
0101	NOT	Bitwise NOT
0110	LOAD	Load Data
0111	STORE	Store Data

⸻

Project Structure

RISC_Processor/
│
├── src/
│   ├── program_counter.v
│   ├── instruction_memory.v
│   ├── register_file.v
│   ├── alu.v
│   ├── control_unit.v
│   ├── risc_top.v
│   └── risc_tb.v
│
├── screenshots/
│   ├── waveform.png
│   ├── rtl.png
│   ├── synthesized_rtl.png
│   └── utilization.png
│
├── report/
│   └── RISC_Report.pdf
│
├── README.md
└── LICENSE

⸻

Software Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

⸻

Modules

Program Counter

Maintains the address of the next instruction to be executed.

Instruction Memory

Stores the processor instructions.

Register File

Contains eight 8-bit general-purpose registers with two read ports and one write port.

Arithmetic Logic Unit (ALU)

Performs arithmetic and logical operations including ADD, SUB, AND, OR, XOR, and NOT.

Control Unit

Decodes instructions and generates the required control signals.

Top Module

Integrates all processor modules into a complete RISC processor.

Testbench

Validates processor functionality through simulation.

⸻

Simulation

The processor was simulated to verify:

* Program Counter operation
* Instruction fetching
* Instruction decoding
* ALU execution
* Register write-back
* Overall processor functionality

⸻

Learning Outcomes

* Processor Architecture
* Verilog RTL Design
* Instruction Fetch and Decode
* Register File Design
* ALU Design
* Control Unit Implementation
* RTL Simulation and Synthesis
* FPGA Design Flow

⸻

Applications

* Embedded Processors
* FPGA-Based CPU Design
* Digital System Design
* Computer Architecture Education
* VLSI Design Learning
* Processor Prototyping

⸻

Future Enhancements

* Data Memory Integration
* Branch and Jump Instructions
* Pipelined Architecture
* Interrupt Handling
* Parameterized Register File
* FPGA Hardware Implementation

⸻

Author

Madheshwaran Maruthamuthu

B.E. Electronics Engineering (VLSI Design and Technology)

PSNA College of Engineering and Technology
