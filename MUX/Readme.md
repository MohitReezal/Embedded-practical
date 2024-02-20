# VHDL MUX Library

This VHDL library includes a simple MUX (Multiplexer) module (`mux`) and a corresponding testbench (`mux_tb`). The `mux` module selects between two input signals (`a` and `b`) based on the value of the selection signal (`sel`), and the result is output as `y`.

## Files:

1. **mux.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a MUX.
   - **Inputs**:
     - `a`, `b`: Input signals.
     - `sel`: Selection signal.
   - **Outputs**:
     - `y`: Output signal.
   - **Operation**:
     - The process within this architecture implements the behavior of a MUX, selecting between inputs `a` and `b` based on the value of the selection signal `sel`.

2. **mux_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `mux` module.
   - **Inputs**:
     - `a`, `b`: Inputs to the MUX during simulation.
     - `sel`: Input to the MUX representing the selection signal.
   - **Outputs**:
     - `y`: Output of the MUX during simulation.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`a`, `b`, `sel`) to the `mux` module, simulating different MUX selection scenarios.
     - Additional test cases can be added to cover various scenarios.

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the MUX design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`mux` and `mux_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.

4. **Test Case Scenarios**:
The testbench includes test cases where different inputs (a, b, sel) are applied to the mux module.
Each test case simulates different MUX selection scenarios.
Modify the testbench stimuli or add more test cases as needed to thoroughly test the functionality of the mux module.