# Makefile for compiling and simulating the FullAdder design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = FullAdder_tb.vhdl

# Set the FullAdder file
FULL_ADDER_FILE = FullAdder.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_FullAdder.ghw

# Set the simulation time
SIM_TIME = --stop-time=100ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(FULL_ADDER_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e FullAdder_tb

simulate:
	$(SIMULATOR) -r FullAdder_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
