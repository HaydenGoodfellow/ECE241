vlib work

vlog Mux6to1.v

vsim Mux6to1

log {/*}
add wave {/*}

# Test case 1
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 1
force {in[5]} 1

force {sel[0]} 0
force {sel[1]} 1
force {sel[2]} 1
run 10ns

# Test case 2
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 1
force {in[5]} 0

force {sel[0]} 1
force {sel[1]} 0
force {sel[2]} 1
run 10ns

# Test case 3
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 0
force {in[5]} 1

force {sel[0]} 0
force {sel[1]} 0
force {sel[2]} 1
run 10ns

# Test case 4
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 0
force {in[4]} 1
force {in[5]} 1

force {sel[0]} 1
force {sel[1]} 1
force {sel[2]} 0
run 10ns

# Test case 5
force {in[0]} 1
force {in[1]} 1
force {in[2]} 0
force {in[3]} 1
force {in[4]} 1
force {in[5]} 1

force {sel[0]} 0
force {sel[1]} 1
force {sel[2]} 0
run 10ns

# Test case 6
force {in[0]} 1
force {in[1]} 0
force {in[2]} 1
force {in[3]} 1
force {in[4]} 1
force {in[5]} 1

force {sel[0]} 1
force {sel[1]} 0
force {sel[2]} 0
run 10ns

# Test case 7
force {in[0]} 0
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 1
force {in[5]} 1

force {sel[0]} 0
force {sel[1]} 0
force {sel[2]} 0
run 10ns

# Test case 8
force {in[0]} 1
force {in[1]} 0
force {in[2]} 0
force {in[3]} 0
force {in[4]} 0
force {in[5]} 0

force {sel[0]} 0
force {sel[1]} 0
force {sel[2]} 0
run 10ns

# Test case 9
force {in[0]} 1
force {in[1]} 1
force {in[2]} 0
force {in[3]} 0
force {in[4]} 0
force {in[5]} 0

force {sel[0]} 1
force {sel[1]} 0
force {sel[2]} 0
run 10ns

# Test case 10
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 0
force {in[4]} 0
force {in[5]} 0

force {sel[0]} 0
force {sel[1]} 1
force {sel[2]} 0
run 10ns

# Test case 11
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 0
force {in[5]} 0

force {sel[0]} 1
force {sel[1]} 1
force {sel[2]} 0
run 10ns


# Test case 12
force {in[0]} 1
force {in[1]} 1
force {in[2]} 1
force {in[3]} 1
force {in[4]} 1
force {in[5]} 0

force {sel[0]} 0
force {sel[1]} 0
force {sel[2]} 1
run 10ns