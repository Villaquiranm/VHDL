# project name
PROJECT=clock_8_bits
# vhdl files
FILES = clock8bits.vhd
# testbench
SIMTOP = testclock
SIMFILES = testclock.vhd
SIMNAME = clock.vcd
#Finish of editable options.
# Simu break condition
#GHDL_SIM_OPT    = --assert-level=error
GHDL_SIM_OPT    = --stop-time=2000ns --vcd=$(SIMNAME)

GHDL_CMD        = ghdl
GHDL_FLAGS      = --ieee=synopsys --warn-no-vital-generic

VIEW_CMD        = /usr/bin/gtkwave

compile:
	$(GHDL_CMD) -a $(GHDL_FLAGS) $(SIMFILES) $(FILES)
	$(GHDL_CMD) -e $(GHDL_FLAGS) $(SIMTOP)

run :
	$(GHDL_CMD) -r $(GHDL_FLAGS) $(SIMTOP) $(GHDL_SIM_OPT)

view:
	$(VIEW_CMD) $(SIMNAME)

clean :
	$(GHDL_CMD) --clean
	$(GHDL_CMD) --remove
	rm $(SIMNAME)
