# Makefile for compiling and simulating the full_adder design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = full_adder_tb.vhdl

# Set the full_adder file
FULL_ADDER_FILE = full_adder.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_full_adder.ghw

# Set the simulation time
SIM_TIME = --stop-time=100ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(FULL_ADDER_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e full_adder_tb

simulate:
	$(SIMULATOR) -r full_adder_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
