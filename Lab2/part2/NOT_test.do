vlib work

vlog Mux2to1.v

vsim v74LS04

log {/*}
add wave {/*}

# first test case
force {pin1} 1
force {pin3} 1
force {pin5} 1
force {pin9} 1
force {pin11} 1
force {pin13} 1
run 10ns

# second test case
force {pin1} 0
force {pin3} 0
force {pin5} 0
force {pin9} 0
force {pin11} 0
force {pin13} 0
run 10ns

