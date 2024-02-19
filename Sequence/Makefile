# Makefile for compiling and simulating the sequence detector design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = sequence_tb.vhdl

# Set the design file
SEQUENCE_FILE = sequence.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_sequence.ghw

# Set the simulation time
SIM_TIME = --stop-time=100ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(SEQUENCE_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e sequence_tb

simulate:
	$(SIMULATOR) -r sequence_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw

