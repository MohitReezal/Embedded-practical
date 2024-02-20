## Decoder 3x8 VHDL  Implementation ,Testbech and makefile

## Files:

## decoder3x8.vhdl:

Purpose: This VHDL file defines the architecture for a 3x8 Decoder. It takes a 3-bit input and produces an 8-bit output based on the input combination.
Inputs:
A: 3-bit input vector representing the binary address.
Outputs:
Q: 8-bit output vector representing the decoded values based on the input address.
Operation:
The process within this architecture implements a case statement to decode the input address (A) and produce the corresponding output (Q).
## decoder3x8_tb.vhdl:

Purpose: This VHDL file contains the testbench for the decoder3x8 module.
Inputs:
A: 3-bit input vector for the test cases.
Outputs:
Q: 8-bit output vector representing the decoded values during simulation.
Test Cases:
The testbench includes a stimulus process that applies various input patterns (A) to the decoder3x8 module, simulating different input scenarios.
The waveform can be observed for the corresponding output values (Q).
## Makefile:

Purpose: This Makefile is provided for convenient compilation, simulation, and cleanup of the design.
Targets:
compile: Compiles the VHDL files (decoder3x8 and decoder3x8_tb).
simulate: Simulates the design and generates a waveform file.
view: Opens the GTKWave viewer to visualize the waveform.
clean: Removes generated files and cleans up the directory.

## Test Case Scenarios:
The testbench includes various test case scenarios where different binary addresses (A) are applied to the decoder3x8 module.
Each test case simulates a different input scenario to observe the corresponding decoded output values (Q).
Modify the testbench stimuli or add more test cases as needed to thoroughly test the functionality of the decoder3x8 module.