#######
# THIS PROGRAM ASSUMES THE BITMAP FILE IS EXACTLY 320 PIXELS WIDE AND 240 PIXELS TALL
# IF THE BITMAP FILE DOES NOT MATCH THAT SIZE EXACTLY, THEN PROGRAM FAILS
#

#######
# DATA - PROGRAM DATA AND VARIABLES
#######
.data

# the bitmap file format has a header that is exactly 54 bytes long.
.eqv BITMAP_HEADER_SIZE 54

.eqv EXPECTED_BITMAP_WIDTH 320
.eqv EXPECTED_BITMAP_HEIGHT 240

# TILE_ROW_SIZE = how many bytes a row of an eight-by-eight tile has (3 * 8)
.eqv TILE_ROW_SIZE 24

# ROW_SIZE = how many bytes a bitmap row consumes (320 * 3)
.eqv ROW_SIZE 960

# TILE_STRIDE = how many bytes of rows a bitmap tile consumes (8* 3 * 320 = 7680)
.eqv TILE_STRIDE 7680
.eqv ARRAY_PIXELS_SIZE 230400

# size for allocating buffer to read whole file
.eqv ONE_MEBIBYTE 1048576
.eqv INPUT_LIMIT 32

# color for painting the numbers on the bitmap
.eqv PAINT_COLOR 0x00000000 # black

bitmap_header: .space BITMAP_HEADER_SIZE

bitmap_digit0: # '0'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 1, 1, 0, 0, 0, 0, 1, 0
.byte 1, 0, 1, 0, 0, 0, 1, 0
.byte 1, 0, 0, 1, 0, 0, 1, 0
.byte 1, 0, 0, 0, 1, 0, 1, 0
.byte 1, 0, 0, 0, 0, 1, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit1: # '1'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 1, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0

bitmap_digit2: # '2'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 0, 0, 0, 0
.byte 0, 0, 0, 0, 1, 1, 0, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0

bitmap_digit3: # '3'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 0, 1, 1, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit4: # '4'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 0, 0, 0, 0, 0
.byte 0, 1, 0, 1, 0, 0, 0, 0
.byte 0, 1, 0, 0, 1, 0, 0, 0
.byte 0, 1, 0, 0, 0, 1, 0, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0

bitmap_digit5: # '5'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit6: # '6'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit7: # '7'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 0, 0, 0, 0, 0, 0
.byte 0, 0, 1, 0, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0
.byte 0, 0, 0, 1, 0, 0, 0, 0

bitmap_digit8: # '8'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_digit9: # '9'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 0, 0, 0, 0, 0, 1, 0
.byte 1, 1, 1, 1, 1, 1, 1, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 1, 0, 0, 0, 0, 0, 0, 0
.byte 0, 1, 1, 1, 1, 1, 0, 0

bitmap_dot: # '.'
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 0, 0, 0
.byte 0, 0, 0, 0, 0, 1, 1, 0
.byte 0, 0, 0, 0, 0, 1, 1, 0

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
data_size: .word 0
pixel_array_pointer: .word 0
file_name_input: .asciiz "source.bmp"
file_name_output: .asciiz "destination.bmp"
prompt_number: .asciiz "Type the floating point number: "
prompt_coordinate_x: .asciiz "Type the X coordinate: "
prompt_coordinate_y: .asciiz "Type the Y coordinate: "
chunk_bitmap_width: .asciiz "bitmap width: "
chunk_bitmap_height: .asciiz "bitmap height: "
error_string: .asciiz "Couldn't open file for reading!\n"
line_break: .asciiz "\n"

input_buffer: .space 64

#######
# TEXT - PROGRAM CODE
#######
.text

#######
# main
#######
main:

main_read_bitmap:

	li $a0, ONE_MEBIBYTE
	li $v0, 9
	syscall                               # allocate memory
	
	la $at, file_buffer
	sw $v0, 0($at)	

	la $a0, file_name_input
	li $a1, 0
	li $a2, 0
	li $v0, 13
	syscall                               # open file

	blt $v0, $zero, main_error

	la $at, file_handle_input
	sw $v0, 0($at)

	move $a0, $v0
	la $a1, bitmap_header
	li $a2, BITMAP_HEADER_SIZE
	li $v0, 14
	syscall                               # read file

	blt $v0, $a2, main_error

	la $at, bitmap_header
	lhu $t1, 0($at)

check_compression_and_size:
	
	#######
	# checks whether:
	# -> compression method == 0
	# -> width and height are equal to expected
	#######

	# $t0 = compression method
	lbu $t0, 30($at)

	# expects compression method 0 (uncompressed)
	bne $t0, $zero, main_error

	# $t0 = bitmap width, $t1 = bitmap height
	move $t0, $zero
	move $t1, $zero

	# loads little-endian word into $t1

	lbu $t2, 22($at)
	or $t1, $t1, $t2

	lbu $t2, 23($at)
	sll $t2, $t2, 8
	or $t1, $t1, $t2

	lbu $t2, 24($at)
	sll $t2, $t2, 16
	or $t1, $t1, $t2

	lbu $t2, 25($at)
	sll $t2, $t2, 24
	or $t1, $t1, $t2

	# loads little-endian word into $t1 

	lbu $t2, 18($at)
	or $t0, $t0, $t2

	lbu $t2, 19($at)
	sll $t2, $t2, 8
	or $t0, $t0, $t2

	lbu $t2, 20($at)
	sll $t2, $t2, 16
	or $t0, $t0, $t2

	lbu $t2, 21($at)
	sll $t2, $t2, 24
	or $t0, $t0, $t2

	la $a0, chunk_bitmap_width
	li $v0, 4
	syscall                               # print string

	move $a0, $t0
	li $v0, 1
	syscall                               # print integer

	la $a0, line_break
	li $v0, 4
	syscall                               # print string

	la $a0, chunk_bitmap_height
	li $v0, 4
	syscall                               # print string

	move $a0, $t1
	li $v0, 1
	syscall                               # print integer

	la $a0, line_break
	li $v0, 4
	syscall                               # print string

	li $t2, EXPECTED_BITMAP_WIDTH
	bne $t0, $t2, main_error

	li $t2, EXPECTED_BITMAP_HEIGHT
	bne $t1, $t2, main_error
	
	# $t0 = file size, reads little-endian number

	la $t0, data_size
	li $t1, BITMAP_HEADER_SIZE
	subu $t0, $t0, $t1

	# reads the remainder of the file
read_file_remainder:

	la $at, file_handle_input
	lw $a0, 0($at)

	la $a1, file_buffer
	lw $a1, 0($a1)

	move $a2, $t0

	li $v0, 14
	syscall                               # read file

	blt $v0, $zero, main_error

	la $at, data_size
	sw $v0, 0($at)


main_pixel_array_offset:

	la $at, bitmap_header

	# $t0 = count of colors in palette
	move $t0, $zero
	
	lbu $t1, 10($at)
	or $t0, $t0, $t1

	lbu $t1, 11($at)
	sll $t1, $t1, 8
	or $t0, $t0, $t1

	lbu $t1, 12($at)
	sll $t1, $t1, 16
	or $t0, $t0, $t1

	lbu $t1, 13($at)
	sll $t1, $t1, 24
	or $t0, $t0, $t1

	subiu $t0, $t0, BITMAP_HEADER_SIZE

	la $at, file_buffer
	lw $at, 0($at)

	addu $t0, $t0, $at

	la $at, pixel_array_pointer
	sw $t0, 0($at)

	b main_user_input

main_error:
	la $a0, error_string
	li $v0, 4
	syscall                               # print string

	j main_program_end

main_user_input:
	la $a0, prompt_number
	li $v0, 4
	syscall                               # print string

	la $a0, input_buffer
	li $a1, INPUT_LIMIT
	li $v0, 8
	syscall                               # read string

	# asks the user for the x coordinate

	la $a0, prompt_coordinate_x
	li $v0, 4
	syscall                               # print string

	li $v0, 5
	syscall                               # read integer

	la $a0, coordinate_x
	sw $v0, 0($a0)

	# asks the user for the y coordinate

	la $a0, prompt_coordinate_y
	li $v0, 4
	syscall                               # print string

	li $v0, 5
	syscall                               # read integer

	la $a0, coordinate_y
	sw $v0, 0($a0)

	# loop for drawing the input floating-point number
	la $s0, input_buffer
	addiu $s0, $s0, -1

main_draw_text_loop:

	addiu $s0, $s0, 1

	# if null character found, break loop
	lbu $t0, 0($s0)
	beq $t0, $zero, main_write_file

	# dot found, print it.
	li $t1, '.'
	beq $t0, $t1, main_draw_text_dot

	# ignore characters after '9'
	li $t1, '9'
	bgt $t0, $t1, main_draw_text_loop

	# ignore characters before '0'
	li $t1, '0'
	blt $t0, $t1 main_draw_text_loop

main_draw_text_digit:

	# $t0 = index in array_digits
	subu $t0, $t0, $t1
	sll $t0, $t0, 2

	# $a0 = pointer to bitmap tile

	la $a0, array_digits
	addu $a0, $a0, $t0
	lw $a0, 0($a0)

	la $at, coordinate_x
	lw $a1, 0($at)

	la $at, coordinate_y
	lw $a2, 0($at)

	li $a3, PAINT_COLOR
	
	jal draw_tile

	b main_draw_text_next_tile

main_draw_text_dot:

	# draw dot

	la $a0, bitmap_dot

	la $at, coordinate_x
	lw $a1, 0($at)

	la $at, coordinate_y
	lw $a2, 0($at)

	li $a3, PAINT_COLOR
	
	jal draw_tile

main_draw_text_next_tile:

	# increases x coordinate of origin point by 24

	la $t0, coordinate_x
	lw $t1, 0($t0)
	addiu $t1, $t1, 24
	sw $t1, 0($t0)

	b main_draw_text_loop

main_write_file:

	la $a0, file_name_output
	li $a1, 1
	li $a2, 0
	li $v0, 13
	syscall                               # open file

	blt $v0, $zero, main_error

	la $at, file_handle_output
	sw $v0, 0($at)

	move $a0, $v0

	la $a1, bitmap_header

	li $a2, BITMAP_HEADER_SIZE

	li $v0, 15
	syscall                               # write file

	blt $v0, $zero, main_error

	la $a0, file_handle_output
	lw $a0, 0($a0)

	la $a1, file_buffer
	lw $a1, 0($a1)

	la $a2, data_size
	lw $a2, 0($a2)

	li $v0, 15
	syscall                               # write file

	b main_program_end


main_program_end:
	li $v0, 10
	syscall

#######
# draw_tile:
# 
# ARGUMENTS:
# $a0: pointer to tile to be printed
# $a1: coordinate x
# $a2: coordinate y
########
draw_tile:

	# $t4 = pointer to end of pixels array
	la $at, pixel_array_pointer
	lw $t0, ($at)

	li $t4, ARRAY_PIXELS_SIZE
	addu $t4, $t4, $t0
	subu $t4, $t4, 1
	# $a2 = $a2 * ROW_SIZE
	li $at, ROW_SIZE
	multu $a2, $at
	mflo $a2

	# $t0 = offset
	li $t0, ROW_SIZE
	subu $t0, $t0, $a1
	addu $t0, $t0, $a2

	# $t1 = limit address, marks end of bitmap
	li $at, TILE_STRIDE
	addu $t1, $t0, $at

	addiu $t0, $t0, 8

draw_tile_loop:

	bge $t0, $t1, draw_tile_end

	move $t2, $zero
	li $t3, 8 # pixels in a row

draw_tile_row_loop:

	# all pixels for this row have been drawn, move to the next
	beq $t2, $t3, draw_tile_row_end

	lbu $at, 0($a0)
	beq $at, $zero, draw_tile_row_loop_continue

draw_tile_row_pixel:
	subu $t5, $t4, $t0
	la $a3, PAINT_COLOR
	sb $a3, 0($t5)
	sb $a3, 1($t5)
	sb $a3, 2($t5)

draw_tile_row_loop_continue:

	addiu $t0, $t0, 3
	addiu $t2, $t2, 1
	addiu $a0, $a0, 1
	b draw_tile_row_loop

draw_tile_row_end:

	# moves pointer to the next row
	li $at, ROW_SIZE
	addu $t0, $t0, $at

	# moves pointer to start of tile row, at the left
	li $at, TILE_ROW_SIZE
	subu $t0, $t0, $at

	b draw_tile_loop

draw_tile_end:

	jr $ra