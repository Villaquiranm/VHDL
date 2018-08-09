# project name
PROJECT = adder
# vhdl files
FILES = full_adder_vhdl_code.vhdl
# testbench
SIMTOP = adder_test_bench
SIMFILES = adder_test_bench.vhdl
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
