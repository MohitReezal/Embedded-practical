# Makefile for compiling and simulating the mux design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = mux_tb.vhdl

# Set the mux file
MUX_FILE = mux.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_mux.ghw

# Set the simulation time
SIM_TIME = --stop-time=100ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(MUX_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e mux_tb

simulate:
	$(SIMULATOR) -r mux_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
