# VHDL 3x8 Decoder Library

This VHDL library includes a 3x8 Decoder module (`decoder3x8`) and a corresponding testbench (`decoder3x8_tb`). The `decoder3x8` module is a combinational circuit that decodes a 3-bit input (`A`) into an 8-bit output (`Q`). The design is implemented using a case statement.

## Files:

1. **decoder3x8.vhdl**:
   - **Purpose**: This VHDL file defines the architecture for a 3x8 Decoder.
   - **Inputs**:
     - `A`: 3-bit input for decoding.
   - **Outputs**:
     - `Q`: 8-bit output representing the decoded value.
   - **Operation**:
     - The process within this architecture uses a case statement to decode the input `A` into the corresponding output `Q`.

2. **decoder3x8_tb.vhdl**:
   - **Purpose**: This VHDL file contains the testbench for the `decoder3x8` module.
   - **Inputs/Outputs**:
     - `A`: Input to the 3x8 Decoder during simulation.
     - `Q`: Output of the 3x8 Decoder indicating the decoded value.
   - **Test Cases**:
     - The testbench includes a stimulus process that applies various input patterns (`A`) to the `decoder3x8` module, simulating different decoding scenarios.

3. **Makefile**:
   - **Purpose**: This Makefile is provided for convenient compilation, simulation, and cleanup of the 3x8 Decoder design.
   - **Targets**:
     - `compile`: Compiles the VHDL files (`decoder3x8` and `decoder3x8_tb`).
     - `simulate`: Simulates the design and generates a waveform file.
     - `view`: Opens the GTKWave viewer to visualize the waveform.
     - `clean`: Removes generated files and cleans up the directory.


4. **Test Case Scenarios**:
The testbench includes test cases where different inputs (A) are applied to the decoder3x8 module.
Each test case simulates different decoding scenarios.
