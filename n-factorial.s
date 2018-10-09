main:
	addi $s0, $0, 1 # s0=1
	addi $s1, $0, 1 # s1=1
	addi $t0, $0, 10 # t0=10
	addi $t2, $0, 0 # t2=0
loop:
	slt $t1, $s0, $t0  # s0<10?
	beq $t1, $0, done
	sll $s1, $s1, 1   # s1=s1<<1
	add $t2, $t2, $s1
	addi $s0, $s0, 1 # s0++
done:
