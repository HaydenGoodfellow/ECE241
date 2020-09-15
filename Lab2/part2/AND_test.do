vlib work

vlog Mux2to1.v

vsim v74LS08

log {/*}
add wave {/*}

# first test case
force {pin1} 1
force {pin2} 1
force {pin4} 1
force {pin5} 1
force {pin9} 1
force {pin10} 1
force {pin12} 1
force {pin13} 1
run 10ns

# second test case
force {pin1} 1
force {pin2} 0
force {pin4} 1
force {pin5} 0
force {pin9} 1
force {pin10} 0
force {pin12} 1
force {pin13} 0
run 10ns

# third test case
force {pin1} 0
force {pin2} 1
force {pin4} 0
force {pin5} 1
force {pin9} 0
force {pin10} 1
force {pin12} 0
force {pin13} 1
run 10ns

# forth test case
force {pin1} 0
force {pin2} 0
force {pin4} 0
force {pin5} 0
force {pin9} 0
force {pin10} 0
force {pin12} 0
force {pin13} 0
run 10ns
