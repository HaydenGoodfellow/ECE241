vlib work

vlog Mux2to1.v

vsim Mux2to1

log {/*}
add wave {/*}

# first test case
force {SW[0]} 1
force {SW[1]} 1
force {SW[9]} 1
run 10ns

# second test case
force {SW[0]} 1
force {SW[1]} 1
force {SW[9]} 0
run 10ns

# third test case
force {SW[0]} 1
force {SW[1]} 0
force {SW[9]} 1
run 10ns

# forth test case
force {SW[0]} 0
force {SW[1]} 1
force {SW[9]} 1
run 10ns

# fifth test case
force {SW[0]} 1
force {SW[1]} 0
force {SW[9]} 0
run 10ns

# sixth test case
force {SW[0]} 0
force {SW[1]} 1
force {SW[9]} 0
run 10ns

# seventh test case
force {SW[0]} 0
force {SW[1]} 0
force {SW[9]} 1
run 10ns

# eigth test case
force {SW[0]} 0
force {SW[1]} 0
force {SW[9]} 0
run 10ns