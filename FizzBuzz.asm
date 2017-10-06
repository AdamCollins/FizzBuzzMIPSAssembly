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
beq $s0 $0 printFizz	#print FIZZ if t0%3==0
	printFizzNext:

div $t0 $t5	#lo = t0%5	
mfhi $s0	#s0 = t0%5
beq $s0 $0 printBuzz	#print BUZZ if t0%5==0
	printBuzzNext:
#Space to expand with other multiples

bne $a0 0 end
	li $v0 1
	add $a0 $0 $t0
	syscall

j end		#end Program

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
