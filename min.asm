# min.asm program
#

.data

        # TODO: Complete these declarations / initializations

        prompt: .asciiz "Enter the next number:\n"
        minimum: .asciiz "Minimum: "
        newline: .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:
	# TODO: Write your code here
	li $v0 4
	la $a0 prompt
	syscall
	li $v0 5
	syscall
	move $t0 $v0

    li $v0 4
	la $a0 prompt
	syscall
	li $v0 5
	syscall
	move $t1 $v0

    li $v0 4
	la $a0 prompt
	syscall
	li $v0 5
	syscall
	move $t2 $v0

    li $v0 4
    la $a0 minimum
    syscall

    blt $t0 $t1 min_0
    j min_1

 min_0:
    blt $t0 $t2 min_total_0
    j min_total_2

 min_1:
    blt $t1 $t2 min_total_1
    j min_total_2

 min_total_0:
    li $v0 1
    move $a0 $t0
    syscall
    j exit

 min_total_1:
    li $v0 1
    move $a0 $t1
    syscall
    j exit

 min_total_2:
    li $v0 1
    move $a0 $t2
    syscall
    j exit


exit:
    li $v0 4
    la $a0 newline
    syscall
	li $v0 10
	syscall