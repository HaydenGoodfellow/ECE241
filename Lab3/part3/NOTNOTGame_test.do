vlib work

vlog NOTNOTGame.v
vlog PromptGen.v

vsim NOTNOTGame

log {/*}
add wave {/*}

#################
force {SW[9]} 0
force {SW[8]} 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
#################
force {SW[9]} 0
force {SW[8]} 1
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
#################
force {SW[9]} 1
force {SW[8]} 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
#################
force {SW[9]} 0
force {SW[8]} 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0
run 100ns
force CLOCK_50 1
run 100ns
force CLOCK_50 0

