# pow.asm program
#

# C++ (NON-RECURSIVE) code snippet of pow(x,n):
#   int x, n, pow=1; 
#   cout << "Enter a number x:\n"; 
#   cin >> x;
#   cout << "Enter the exponent n:\n"; 
#   cin >> n; 
#   for (int i = 1; i <= n; i++) { 
#   	pow = pow * x; 
#   } 
#   cout << "Power(x,n) is:\n" << pow << "\n";
#
# Assembly (NON-RECURSIVE) code version of pow(x,n):
#
.data
    prompt_base: .asciiz "Enter a number x:\n"
    prompt_exp: .asciiz "Enter the exponent n:\n"
    output: .asciiz "Power(x,n) is:\n"
    newline: .asciiz "\n"
	# TODO: Write your initializations here

#Text Area (i.e. instructions)
.text
main:
	li $v0 4
    la $a0 prompt_base
    syscall
    li $v0 5
    syscall
    move $t0 $v0    # base

    li $v0 4
    la $a0 prompt_exp
    syscall
    li $v0 5
    syscall
    move $t1 $v0    # exponent

    li $t2 0        # counter 
    li $t3 1        # output

loop:
    beq $t1 $t2 exit
    addu $t2 $t2 1
    mult $t3 $t0
    mflo $t3
    j loop

exit:
	li $v0 4
    la $a0 output
    syscall
    li $v0 1
    move $a0 $t3
    syscall

    li $v0 10
	syscall