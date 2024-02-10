# Makefile for compiling and simulating the jkflipflop design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = jkflipflop_tb.vhdl

# Set the jkflipflop file
JKFLIPFLOP_FILE = jkflipflop.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_jkflipflop.ghw

# Set the simulation time
SIM_TIME = --stop-time=100ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(JKFLIPFLOP_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e jkflipflop_tb

simulate:
	$(SIMULATOR) -r jkflipflop_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
