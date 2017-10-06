#FizzBuzz in MIPS
.data
FIZZ:	.asciiz "FIZZ"
BUZZ:	.asciiz	"BUZZ"
.text
li $t3 3	#t3 = 3
li $t5 5	#t5 = 5 	

li $t0 15	#n = t0


div $t0 $t3	#lo = t0%3
mfhi $s0	#s0 = t0%3
beq $s0 $0 printFizz
	printFizzNext:

div $t0 $t5	#lo = t0%5
mfhi $s0	#s0 = t0%5
beq $s0 $0 printBuzz
	printBuzzNext:

#Space to expand to other multiples
j end


printFizz:
	li $v0 4
	la $a0 FIZZ
	syscall
	j printFizzNext

printBuzz:
	li $v0 4
	la $a0 BUZZ
	syscall
	j printBuzzNext
end: