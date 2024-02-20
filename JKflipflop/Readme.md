# VHDL JK Flip-Flop Library

This VHDL library includes a JK flip-flop module (`jkflipflop`) and a corresponding testbench (`jkflipflop_tb`). The `jkflipflop` module is a sequential circuit that implements a JK flip-flop with asynchronous clear (`clr`), clock (`clk`), J input (`j`), K input (`k`), and complementary outputs (`q`, `nq`).

## Files:

1. **jkflipflop.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a JK flip-flop.
   - **Inputs**:
     - `clk`: Clock input.
     - `clr`: Active-low asynchronous clear input.
     - `j`: J input.
     - `k`: K input.
   - **Outputs**:
     - `q`: Q output.
     - `nq`: Q' (not Q) output.
   - **Operation**:
     - The process within this architecture implements the behavior of a JK flip-flop based on the rising edge of the clock (`clk`), asynchronous clear (`clr`), and J and K inputs.

2. **jkflipflop_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `jkflipflop` module.
   - **Inputs**:
     - `clk`, `clr`, `j`, `k`: Inputs to the JK flip-flop during simulation.
   - **Outputs**:
     - `q`, `nq`: Outputs of the JK flip-flop during simulation.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`clr`, `j`, `k`) to the `jkflipflop` module, simulating different scenarios.
     - The clock (`clk`) is toggled in the simulation to observe the corresponding output values (`q`, `nq`).

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the JK flip-flop design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`jkflipflop` and `jkflipflop_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.



4. **Test Case Scenarios**:
The testbench includes various test case scenarios where different inputs (clr, j, k) are applied to the jkflipflop module.
Each test case simulates different JK flip-flop states based on the clock toggling.
Modify the testbench stimuli or add more test cases as needed to thoroughly test the functionality of the jkflipflop module.


![Screenshot from 2024-02-20 21-20-51](https://github.com/MohitReezal/Embedded-practical/assets/140707863/667aca05-0636-4e34-8b9d-5d1192ccc4b2)
