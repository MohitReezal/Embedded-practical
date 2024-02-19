# Makefile for compiling and simulating the full with half adder design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = fullwithhalfadder_tb.vhdl

# Set the design file
FULLWITHHALFADDER_FILE = fullwithhalfadder.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_fullwithhalfadder.ghw

# Set the simulation time
SIM_TIME = --stop-time=50ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(FULLWITHHALFADDER_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e fullwithhalfadder_tb

simulate:
	$(SIMULATOR) -r fullwithhalfadder_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw

