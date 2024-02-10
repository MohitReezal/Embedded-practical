# Makefile for compiling and simulating the LCM_FSM design

# Set the VHDL compiler
VHDL_COMPILER = ghdl

# Set the simulator
SIMULATOR = ghdl

# Set the testbench file
TB_FILE = LCM_FSM_tb.vhdl

# Set the LCM_FSM file
LCM_FSM_FILE = LCM_FSM.vhdl

# Set the signals to be traced
WAVEFORM_FILE = waveform_LCM_FSM.ghw

# Set the simulation time
SIM_TIME = --stop-time=200ns

# Targets
all: compile simulate

compile:
	$(VHDL_COMPILER) -a $(LCM_FSM_FILE) $(TB_FILE)
	$(VHDL_COMPILER) -e LCM_FSM_tb

simulate:
	$(SIMULATOR) -r LCM_FSM_tb $(SIM_TIME) --wave=$(WAVEFORM_FILE)

view:
	gtkwave $(WAVEFORM_FILE) &

clean:
	rm -f *.o work-obj93.cf *.ghw
