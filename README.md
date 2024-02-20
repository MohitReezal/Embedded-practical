## Contributors
- [Samir K.C.](https://github.com/saamirkc)
- [Mohit Reezal](https://github.com/MohitReezal)



# Embedded System VHDL Project

This repository contains several modules related to embedded systems. Each module serves a specific purpose and is organized into folders for better management. The modules include:

## Table of Contents
- [Modules](#modules)
- [Dependencies](#dependencies)
- [How To Run](#how-to-run)

## Modules
Each of the following modules is in a separate directory in the project, along with all their related files:

- **decoder**: Module for decoding signals
- **demux**: Demultiplexer module.
- **fulladder**: Full adder module.
- **jk**: Module related to JK flip-flops.
- **lcm**: Module for finding the least common multiple.
- **mux**: Multiplexer module.
- **seq**: Module related to sequential logic (detection of the 1011 sequence).

## Dependencies
To run the code in this repository, the following dependencies are required:

- **GHDL**: GHDL is the compiler for VHDL code.
  - For Linux: `sudo <package manager> install ghdl` (e.g., `sudo apt install ghdl`) (In our case we had used linux OS)
  - For Windows: Follow the guide on [GHDL GitHub repo](https://github.com/ghdl/ghdl)

- **GTK-WAVE**: GTK-WAVE is the program for viewing input-output waveforms.
  - For Linux: `sudo <package-manager> install gtkwave` (e.g., `sudo apt install gtkwave`)
  - For Windows: Follow the instructions on the [GTKwave website](https://gtkwave.sourceforge.net)

## How To Run
Each module is in its own folder and includes a test bench file with the naming convention `name_tb.vhdl`. Use these test benches to run and test the corresponding modules. The Makefile in the respective directories contains the commands to compile, simulate, and view the modules' waveforms.

Example (running the decoder):

```bash
make view -C decoder





