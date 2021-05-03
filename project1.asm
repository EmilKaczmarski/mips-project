.data

.eqv BITMAP_HEADER_SIZE 54
.eqv ROW_SIZE 960
bitmap_header: .space BITMAP_HEADER_SIZE

bitmap_digit0: # '0'
.byte 1, 1, 1, 1, 1, 1, 1, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 0, 0, 0, 0, 0, 0, 1
.byte 1, 1, 1, 1, 1, 1, 1, 1

bitmap_digit1: # '1'
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 1, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 1, 1, 1, 0, 0, 0

bitmap_digit2: # '2'
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 0, 0, 0, 0
.byte 0, 0, 0, 0, 1, 1, 0, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0

bitmap_digit3: # '3'
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0

bitmap_digit4: # '4'
.byte 0, 1, 1, 0, 0, 0, 0, 0
.byte 0, 1, 0, 1, 0, 0, 0, 0
.byte 0, 1, 0, 0, 1, 0, 0, 0
.byte 0, 1, 0, 0, 0, 1, 0, 0
.byte 1, 1, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0

bitmap_digit5: # '5'
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit6: # '6'
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 1, 0
.byte 0, 1, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0

bitmap_digit7: # '7'
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 0, 1, 0, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 0, 1, 0, 0, 0
.byte 0, 0, 0, 0, 1, 0, 0, 0
.byte 0, 0, 0, 0, 1, 0, 0, 0

bitmap_digit8: # '8'
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0

bitmap_digit9: # '9'
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0

bitmap_dot: # '.'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 1, 1, 0, 0, 0
.byte 0, 0, 0, 1, 1, 0, 0, 0

array_digits:
.word bitmap_digit0
.word bitmap_digit1
.word bitmap_digit2
.word bitmap_digit3
.word bitmap_digit4
.word bitmap_digit5
.word bitmap_digit6
.word bitmap_digit7
.word bitmap_digit8
.word bitmap_digit9

coordinate_x: .word 0
coordinate_y: .word 0
file_handle_input: .word 0
file_handle_output: .word 0
file_buffer: .word 0
data_size: .word 268501812
pixel_array_pointer: .word 0
file_name_input: .asciiz "source.bmp"
file_name_output: .asciiz "destination.bmp"
prompt_number: .asciiz "Type the floating point number: "
prompt_coordinate_x: .asciiz "Type the X coordinate: "
prompt_coordinate_y: .asciiz "Type the Y coordinate: "
error_string: .asciiz "Something went wrong!\n"
input_buffer: .space 64

.text

main:
	li $a0, 1048576 # one mebibyte
	li $v0, 9
	syscall                               # allocate memory
	
	la $at, file_buffer
	sw $v0, 0($at)	

	la $a0, file_name_input
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall                               # open file

	blt $v0, $zero, prompt_error

	la $at, file_handle_input
	sw $v0, 0($at)

	move $a0, $v0
	la $a1, bitmap_header
	li $a2, BITMAP_HEADER_SIZE
	li $v0, 14
	syscall                               # read file

	blt $v0, $a2, prompt_error

	la $at, bitmap_header
	lhu $t1, 0($at)

read_pixel_data:
	la $t0, data_size
	li $t1, BITMAP_HEADER_SIZE
	subu $t0, $t0, $t1

	la $at, file_handle_input # reads the remainder of the file
	lw $a0, 0($at)

	la $a1, file_buffer
	lw $a1, 0($a1)

	move $a2, $t0

	li $v0, 14
	syscall                               # read file

	blt $v0, $zero, prompt_error

	la $at, data_size
	sw $v0, 0($at)

main_pixel_array_offset:
	la $at, file_buffer
	lw $t0, 0($at)

	la $at, pixel_array_pointer
	sw $t0, 0($at)

	b main_user_input

prompt_error:
	la $a0, error_string
	li $v0, 4
	syscall                               # print string

	j main_program_end

main_user_input:
	la $a0, prompt_number
	li $v0, 4
	syscall                               # print string

	la $a0, input_buffer
	li $a1, 32
	li $v0, 8
	syscall                               # read string

	la $a0, prompt_coordinate_x
	li $v0, 4
	syscall                               # print string

	li $v0, 5
	syscall                               # read integer

	la $a0, coordinate_x
	sw $v0, 0($a0)

	la $a0, prompt_coordinate_y
	li $v0, 4
	syscall                               # print string

	li $v0, 5
	syscall                               # read integer

	la $a0, coordinate_y
	sw $v0, 0($a0)

	la $s0, input_buffer # loop for drawing the input floating-point number
	addiu $s0, $s0, -1

main_draw_text_loop:
	addiu $s0, $s0, 1
	lbu $t0, 0($s0)
	beq $t0, $zero, main_write_file

	li $t1, '.'
	beq $t0, $t1, main_draw_text_dot
	li $t1, '9'
	bgt $t0, $t1, main_draw_text_loop
	li $t1, '0'
	blt $t0, $t1 main_draw_text_loop

main_draw_text_digit:
	subu $t0, $t0, $t1 # $t0 = index in array_digits
	sll $t0, $t0, 2    

	la $a0, array_digits # $a0 = pointer to bitmap tile
	addu $a0, $a0, $t0
	lw $a0, 0($a0)
	la $at, coordinate_x
	lw $a1, 0($at)
	la $at, coordinate_y
	lw $a2, 0($at)
	
	jal draw_tile

main_draw_text_dot:
	la $a0, bitmap_dot
	la $at, coordinate_x
	lw $a1, 0($at)
	la $at, coordinate_y
	lw $a2, 0($at)
	jal draw_tile

main_draw_text_next_tile:
	la $t0, coordinate_x
	lw $t1, 0($t0)
	addiu $t1, $t1, 16
	sw $t1, 0($t0)
	b main_draw_text_loop

main_write_file:
	la $a0, file_name_output
	li $a1, 1
	li $a2, 0
	li $v0, 13
	syscall                               # open file
	blt $v0, $zero, prompt_error

	la $at, file_handle_output
	sw $v0, 0($at)
	move $a0, $v0
	la $a1, bitmap_header
	li $a2, BITMAP_HEADER_SIZE
	li $v0, 15
	syscall                               # write file
	blt $v0, $zero, prompt_error

	la $a0, file_handle_output
	lw $a0, 0($a0)
	la $a1, file_buffer
	lw $a1, 0($a1)
	la $a2, data_size
	lw $a2, 0($a2)
	li $v0, 15
	syscall                               # write file

	b main_program_end

draw_tile: # $a0: pointer to tile to be printed, $a1: coordinate x, $a2: coordinate y, $a3: color
	la $at, pixel_array_pointer
	lw $t0, 0($at)

	li $t4, 230400 # array pixel size
	addu $t4, $t4, $t0

	li $at, ROW_SIZE # $a2 = $a2 * ROW_SIZE
	multu $a2, $at
	mflo $a2

	li $t0, ROW_SIZE # $t0 = offset
	subu $t0, $t0, $a1
	addu $t0, $t0, $a2

	li $at, 7680 # tile stride (24 * 320)
	addu $t1, $t0, $at # $t1 = limit address, marks end of bitmap

draw_tile_loop:
	bge $t0, $t1, draw_tile_end
	move $t2, $zero
	li $t3, 8 # pixels in a row

draw_tile_row_loop:
	beq $t2, $t3, draw_tile_row_end
	lbu $at, 0($a0)
	beq $at, $zero, draw_tile_row_loop_continue

draw_tile_black_row_pixel:
	subu $t5, $t4, $t0
	li $a3, 0x00000000
	sb $a3, 0($t5)
	sb $a3, 1($t5)
	sb $a3, 2($t5)

draw_tile_row_loop_continue:
	addiu $t0, $t0, 1
	addiu $t2, $t2, 1
	addiu $a0, $a0, 1
	b draw_tile_row_loop

draw_tile_row_end:
	li $at, ROW_SIZE # moves pointer to the next row
	addu $t0, $t0, $at

	li $at, 8 # tile row size
	subu $t0, $t0, $at # moves pointer to start of tile row, at the left
	b draw_tile_loop

draw_tile_end:
	jr $ra

main_program_end:
	li $v0, 10
	syscall