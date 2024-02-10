# Makefile for compiling and simulating the seq1011 design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = seq1011_tb.vhdl

# Set the seq1011 file
SEQ1011_FILE = seq1011.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_seq1011.ghw

# Set the simulation time
SIM_TIME = --stop-time=200ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(SEQ1011_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e seq1011_tb

simulate:
	$(SIMULATOR) -r seq1011_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
