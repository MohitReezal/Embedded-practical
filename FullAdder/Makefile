# Makefile for compiling and simulating the full adder design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = fulladder_tb.vhdl

# Set the design file
FULLADDER_FILE = fulladder.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_fulladder.ghw

# Set the simulation time
SIM_TIME = --stop-time=50ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(FULLADDER_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e fulladder_tb

simulate:
	$(SIMULATOR) -r fulladder_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw

