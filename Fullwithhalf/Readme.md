# VHDL Full Adder with Half Adder Library

This VHDL library includes a design (`fullwithhalfadder`) that combines a full adder with a half adder, and a corresponding testbench (`fullwithhalfadder_tb`). The `fullwithhalfadder` module takes three inputs (A, B, Cin) and produces two outputs (Sum, Cout) based on the combined operation of a full adder and a half adder.

## Files:

1. **fullwithhalfadder.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a full adder with a half adder.
   - **Inputs**:
     - `A`, `B`: Input bits for addition.
     - `Cin`: Carry-in bit.
   - **Outputs**:
     - `Sum`: Sum bit of the addition.
     - `Cout`: Carry-out bit of the addition.
   - **Operation**:
     - The architecture includes two instances of a half adder (`half_adder`) and an OR gate to combine the results into a full adder with a half adder.

2. **fullwithhalfadder_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `fullwithhalfadder` module.
   - **Inputs**:
     - `A`, `B`, `Cin`: Inputs to the full adder with half adder during simulation.
   - **Outputs**:
     - `Sum`, `Cout`: Outputs of the full adder with half adder during simulation.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`A`, `B`, `Cin`) to the `fullwithhalfadder` module, simulating different addition scenarios.
     - The waveform can be observed for the corresponding output values (`Sum`, `Cout`).

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the full adder with half adder design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`fullwithhalfadder` and `fullwithhalfadder_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.

4.  **Test Case Scenarios**:
The testbench includes various test case scenarios where different binary inputs (A, B, Cin) are applied to the fullwithhalfadder module.
Each test case simulates a different binary addition scenario to observe the corresponding output values (Sum, Cout).
Modify the testbench stimuli or add more test cases as needed to thoroughly test the functionality of the fullwithhalfadder module.