Traffic Light Controller using Verilog

Overview

This project implements a Traffic Light Controller using Verilog HDL based on a Finite State Machine (FSM). The controller manages traffic signals for two intersecting roads by controlling Red, Yellow, and Green lights in a predefined sequence.

Developed as part of a VLSI Internship using Xilinx Vivado.

⸻

Objectives

* Design a Traffic Light Controller using Verilog HDL.
* Implement an FSM-based control system.
* Simulate the design using Vivado Simulator.
* Verify functionality through waveform analysis.
* Perform RTL synthesis.

⸻

Features

* Four-State Finite State Machine
* Automatic traffic signal sequencing
* Active-High Reset
* Clock-driven operation
* Behavioral simulation
* RTL synthesis
* Resource utilization analysis

⸻

State Sequence

State	North-South	East-West
S0	Green	Red
S1	Yellow	Red
S2	Red	Green
S3	Red	Yellow

The sequence repeats continuously.

⸻

Project Structure

Traffic_Light_Controller/
│
├── src/
│   ├── traffic_light.v
│   └── traffic_light_tb.v
│
├── screenshots/
│   ├── waveform.png
│   ├── rtl.png
│   ├── synthesized_rtl.png
│   └── utilization.png
│
├── report/
│   └── Traffic_Light_Controller_Report.pdf
│
├── README.md
└── LICENSE

⸻

Tools Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

⸻

Simulation

The controller was simulated to verify:

* State transitions
* Clock operation
* Reset functionality
* Traffic light sequencing

⸻

Learning Outcomes

* Verilog RTL Design
* Finite State Machines (FSM)
* Testbench Development
* Simulation and Verification
* RTL Synthesis
* FPGA Design Flow

⸻

Future Enhancements

* Pedestrian crossing support
* Emergency vehicle priority
* Traffic sensor integration
* Countdown timer display
* FPGA hardware implementation

⸻

Author

Madheshwaran Maruthamuthu

B.E. Electronics Engineering (VLSI Design and Technology)

PSNA College of Engineering and Technology
