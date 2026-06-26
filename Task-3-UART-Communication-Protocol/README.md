UART Communication Protocol using Verilog

Overview

This project implements a UART (Universal Asynchronous Receiver/Transmitter) communication system using Verilog HDL. The design includes a Baud Rate Generator, UART Transmitter, UART Receiver, Top Module integration, and a comprehensive Testbench. The complete system was simulated and synthesized using Xilinx Vivado.

⸻

Objectives

* Design a UART communication system using Verilog HDL.
* Implement UART Transmitter and Receiver modules.
* Generate baud timing using a Baud Rate Generator.
* Verify serial communication through simulation.
* Perform RTL synthesis using Xilinx Vivado.

⸻

Features

* UART Transmitter
* UART Receiver
* Baud Rate Generator
* UART Top Module
* Functional Testbench
* Behavioral Simulation
* RTL Synthesis
* Resource Utilization Analysis

⸻

UART Frame Format

Idle | Start | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | Stop
  1  |   0   |<----------- 8 Data Bits ----------->|   1

⸻

Project Structure

UART_Communication/
│
├── src/
│   ├── baud_generator.v
│   ├── uart_tx.v
│   ├── uart_rx.v
│   ├── uart_top.v
│   └── uart_tb.v
│
├── screenshots/
│   ├── waveform.png
│   ├── rtl.png
│   ├── synthesized_rtl.png
│   └── utilization.png
│
├── report/
│   └── UART_Report.pdf
│
├── README.md
└── LICENSE

⸻

Software Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

⸻

Module Description

1. Baud Rate Generator

Generates timing pulses required for UART communication.

2. UART Transmitter

Converts 8-bit parallel data into a serial data stream with Start and Stop bits.

3. UART Receiver

Receives serial data and reconstructs the original 8-bit data.

4. UART Top Module

Integrates all UART modules into a complete communication system.

5. Testbench

Verifies UART functionality through simulation.

⸻

Simulation

The UART system was simulated to verify:

* Baud rate generation
* Data transmission
* Data reception
* Serial communication accuracy
* End-to-end functionality

⸻

Learning Outcomes

* UART Communication Protocol
* Verilog RTL Design
* Serial Communication
* Baud Rate Generation
* Digital Verification
* RTL Synthesis
* FPGA Design Flow

⸻

Applications

* Embedded Systems
* FPGA Communication Interfaces
* Microcontroller Communication
* IoT Devices
* Industrial Automation
* Serial Data Communication

⸻

Future Enhancements

* Configurable Baud Rates
* Parity Bit Support
* Multiple Stop Bit Options
* Error Detection (Framing & Parity)
* FIFO Buffers
* FPGA Hardware Implementation

⸻

Author

Madheshwaran Maruthamuthu

B.E. Electronics Engineering (VLSI Design and Technology)

PSNA College of Engineering and Technology
