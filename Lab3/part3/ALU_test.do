vlib work

vlog ALU.v

vsim ALU

log {/*}
add wave {/*}

# Test 1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 1
run 10ns

# Test 3 
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 1
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 1
run 10ns

# Test 4 
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 1
run 10ns

# Test 5 
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 1
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 1
run 10ns

# Test 6
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 1
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 1
run 10ns

# Test 7 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 1
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 8 
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 0


force {KEY[0]} 1
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 9  
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 1
force {SW[7]} 0


force {KEY[0]} 1
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 10 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 11 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 12 
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 0
force {KEY[2]} 1
run 10ns

# Test 10 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 11 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 12 
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 10 
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 11 
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 1
force {SW[4]} 0
force {SW[5]} 1
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 1
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 12 
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[4]} 1
force {SW[5]} 1
force {SW[6]} 1
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 10 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 1
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 11 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[4]} 0
force {SW[5]} 1
force {SW[6]} 0
force {SW[7]} 1


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns

# Test 12 
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[4]} 0
force {SW[5]} 0
force {SW[6]} 0
force {SW[7]} 0


force {KEY[0]} 0
force {KEY[1]} 1
force {KEY[2]} 0
run 10ns
