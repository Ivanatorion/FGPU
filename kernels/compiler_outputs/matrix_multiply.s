	.text
	.section .mdebug.cc_fgpu
	.previous
	.file	"compiler_outputs/matrix_multiply.ll"
	.globl	__addsf3
	.align	2
	.type	__addsf3,@function
	.ent	__addsf3                # @__addsf3
__addsf3:
	.frame	sp,8,lr
	.mask 	0x00000600,-4
	.set	noreorder
	.set	nomacro
# BB#0:
	addi	sp, sp, -2
	lswi	r9, sp[4]               # 4-byte Folded Spill
	lswi	r10, sp[0]              # 4-byte Folded Spill
	li	r3, 65535
	lui	r3, 32767
	and	r4, r1, r3
	addi	r5, r4, -1
	li	r6, 65534
	lui	r6, 32639
	sltu	r6, r6, r5
	and	r5, r2, r3
	bne	r6, r0, LBB0_2
# BB#1:
	addi	r3, r5, -1
	li	r6, 65535
	lui	r6, 32639
	sltu	r3, r3, r6
	bne	r3, r0, LBB0_9
LBB0_2:
	xor	r3, r2, r1
	li	r6, 0
	lui	r6, 32768
	xor	r3, r3, r6
	li	r8, 0
	lui	r8, 32704
	add	r7, r0, r1
	movz	r7, r8, r3
	li	r6, 0
	lui	r6, 32640
	xor	r9, r4, r6
	add	r3, r0, r1
	movz	r3, r7, r9
	sltu	r7, r6, r5
	sltu	r9, r6, r4
	or	r7, r9, r7
	movn	r3, r8, r7
	beq	r4, r6, LBB0_27
# BB#3:
	bne	r7, r0, LBB0_27
# BB#4:
	add	r3, r0, r2
	beq	r5, r6, LBB0_27
# BB#5:
	bne	r4, r0, LBB0_8
	beq	r0, r0, LBB0_6
LBB0_8:
	add	r3, r0, r1
	beq	r5, r0, LBB0_27
LBB0_9:
	sltu	r3, r4, r5
	add	r4, r0, r1
	movn	r4, r2, r3
	movn	r2, r1, r3
	li	r1, 65535
	lui	r1, 127
	and	r3, r4, r1
	srli	r5, r2, 23
	andi	r6, r5, 255
	srli	r5, r4, 23
	andi	r5, r5, 255
	bne	r5, r0, LBB0_11
# BB#10:
	srli	r5, r3, 1
	or	r5, r3, r5
	srli	r7, r5, 2
	or	r5, r5, r7
	srli	r7, r5, 4
	or	r5, r5, r7
	srli	r7, r5, 8
	or	r5, r5, r7
	srli	r7, r5, 16
	nor	r5, r5, r7
	li	r7, 21845
	lui	r7, 21845
	srli	r8, r5, 1
	and	r7, r8, r7
	sub	r5, r5, r7
	li	r7, 13107
	lui	r7, 13107
	and	r8, r5, r7
	srli	r5, r5, 2
	and	r5, r5, r7
	add	r5, r8, r5
	srli	r7, r5, 4
	add	r5, r5, r7
	li	r7, 3855
	lui	r7, 3855
	and	r5, r5, r7
	li	r7, 257
	lui	r7, 257
	mul	r5, r5, r7
	srli	r7, r5, 24
	addi	r5, r0, 9
	sub	r5, r5, r7
	addi	r7, r7, 24
	andi	r7, r7, 31
	sll	r3, r3, r7
LBB0_11:
	and	r7, r2, r1
	bne	r6, r0, LBB0_13
# BB#12:
	srli	r6, r7, 1
	or	r6, r7, r6
	srli	r8, r6, 2
	or	r6, r6, r8
	srli	r8, r6, 4
	or	r6, r6, r8
	srli	r8, r6, 8
	or	r6, r6, r8
	srli	r8, r6, 16
	nor	r6, r6, r8
	li	r8, 21845
	lui	r8, 21845
	srli	r9, r6, 1
	and	r8, r9, r8
	sub	r6, r6, r8
	li	r8, 13107
	lui	r8, 13107
	and	r9, r6, r8
	srli	r6, r6, 2
	and	r6, r6, r8
	add	r6, r9, r6
	srli	r8, r6, 4
	add	r6, r6, r8
	li	r8, 3855
	lui	r8, 3855
	and	r6, r6, r8
	li	r8, 257
	lui	r8, 257
	mul	r6, r6, r8
	srli	r8, r6, 24
	addi	r6, r0, 9
	sub	r6, r6, r8
	addi	r8, r8, 24
	andi	r8, r8, 31
	sll	r7, r7, r8
LBB0_13:
	xor	r2, r4, r2
	slli	r7, r7, 3
	li	r8, 0
	lui	r8, 1024
	or	r9, r7, r8
	slli	r3, r3, 3
	add	r7, r0, r9
	beq	r5, r6, LBB0_16
# BB#14:
	sub	r6, r5, r6
	addi	r7, r0, 31
	sltu	r10, r7, r6
	addi	r7, r0, 1
	bne	r10, r0, LBB0_16
# BB#15:
	andi	r7, r6, 31
	srl	r7, r9, r7
	sub	r6, r0, r6
	andi	r6, r6, 31
	sll	r6, r9, r6
	xor	r6, r6, r0
	sltu	r6, r0, r6
	or	r7, r6, r7
LBB0_16:
	or	r6, r3, r8
	addi	r8, r0, -1
	slt	r2, r8, r2
	bne	r2, r0, LBB0_20
	beq	r0, r0, LBB0_17
LBB0_20:
	add	r2, r7, r6
	li	r6, 0
	lui	r6, 2048
	and	r6, r2, r6
	beq	r6, r0, LBB0_22
	beq	r0, r0, LBB0_21
LBB0_17:
	addi	r3, r0, 0
	beq	r6, r7, LBB0_27
# BB#18:
	sub	r2, r6, r7
	li	r3, 65535
	lui	r3, 1023
	sltu	r3, r3, r2
	bne	r3, r0, LBB0_22
# BB#19:
	srli	r3, r2, 1
	or	r3, r2, r3
	srli	r6, r3, 2
	or	r3, r3, r6
	srli	r6, r3, 4
	or	r3, r3, r6
	srli	r6, r3, 8
	or	r3, r3, r6
	srli	r6, r3, 16
	nor	r3, r3, r6
	li	r6, 21845
	lui	r6, 21845
	srli	r7, r3, 1
	and	r6, r7, r6
	sub	r3, r3, r6
	li	r6, 13107
	lui	r6, 13107
	and	r7, r3, r6
	srli	r3, r3, 2
	and	r3, r3, r6
	add	r3, r7, r3
	srli	r6, r3, 4
	add	r3, r3, r6
	li	r6, 3855
	lui	r6, 3855
	and	r3, r3, r6
	li	r6, 257
	lui	r6, 257
	mul	r3, r3, r6
	srli	r3, r3, 24
	addi	r3, r3, -5
	sub	r5, r5, r3
	andi	r3, r3, 31
	sll	r2, r2, r3
	beq	r0, r0, LBB0_22
LBB0_21:
	add	r3, r7, r3
	andi	r3, r3, 1
	srli	r2, r2, 1
	or	r2, r2, r3
	addi	r5, r5, 1
LBB0_22:
	li	r3, 0
	lui	r3, 32768
	and	r3, r4, r3
	addi	r4, r0, 255
	slt	r4, r5, r4
	bne	r4, r0, LBB0_24
# BB#23:
	li	r1, 0
	lui	r1, 32640
	or	r3, r3, r1
	beq	r0, r0, LBB0_27
LBB0_24:
	slt	r4, r0, r5
	bne	r4, r0, LBB0_26
	beq	r0, r0, LBB0_25
LBB0_6:
	add	r3, r0, r2
	bne	r5, r0, LBB0_27
# BB#7:
	and	r3, r2, r1
	beq	r0, r0, LBB0_27
LBB0_25:
	addi	r4, r0, 1
	sub	r4, r4, r5
	andi	r5, r4, 31
	srl	r6, r2, r5
	addi	r5, r0, 0
	sub	r4, r0, r4
	andi	r4, r4, 31
	sll	r2, r2, r4
	xor	r2, r2, r0
	sltu	r2, r0, r2
	or	r2, r2, r6
LBB0_26:
	srli	r4, r2, 3
	and	r1, r4, r1
	slli	r4, r5, 23
	or	r3, r4, r3
	or	r1, r3, r1
	andi	r2, r2, 7
	addi	r3, r0, 4
	sltu	r4, r3, r2
	add	r1, r1, r4
	xor	r2, r2, r3
	andi	r3, r1, 1
	addi	r4, r0, 0
	movz	r4, r3, r2
	add	r3, r4, r1
LBB0_27:                                # %.thread
	add	r1, r0, r3
	llwi	r10, sp[0]              # 4-byte Folded Reload
	llwi	r9, sp[4]               # 4-byte Folded Reload
	addi	sp, sp, 2
	ret
	.set	macro
	.set	reorder
	.end	__addsf3
rfunc_end0:
	.size	__addsf3, rfunc_end0-__addsf3

	.globl	__muldsi3
	.align	2
	.type	__muldsi3,@function
	.ent	__muldsi3               # @__muldsi3
__muldsi3:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	li	r3, 65535
	lui	r3, 0
	and	r4, r1, r3
	srli	r1, r1, 16
	and	r5, r2, r3
	mul	r6, r5, r4
	srli	r7, r6, 16
	macc	r7, r5, r1
	srli	r2, r2, 16
	srli	r5, r7, 16
	macc	r5, r2, r1
	and	r8, r7, r3
	macc	r8, r2, r4
	macc	r7, r2, r4
	and	r1, r6, r3
	slli	r2, r7, 16
	or	r1, r2, r1
	srli	r2, r8, 16
	add	r2, r5, r2
	ret
	.set	macro
	.set	reorder
	.end	__muldsi3
rfunc_end1:
	.size	__muldsi3, rfunc_end1-__muldsi3

	.globl	__muldi3
	.align	2
	.type	__muldi3,@function
	.ent	__muldi3                # @__muldi3
__muldi3:
	.frame	sp,8,lr
	.mask 	0x00000600,-4
	.set	noreorder
	.set	nomacro
# BB#0:
	addi	sp, sp, -2
	lswi	r9, sp[4]               # 4-byte Folded Spill
	lswi	r10, sp[0]              # 4-byte Folded Spill
	li	r5, 65535
	lui	r5, 0
	and	r6, r1, r5
	and	r7, r3, r5
	mul	r8, r7, r6
	srli	r9, r8, 16
	srli	r10, r1, 16
	macc	r9, r7, r10
	mul	r4, r4, r1
	macc	r4, r2, r3
	srli	r1, r3, 16
	macc	r4, r1, r10
	and	r2, r8, r5
	and	r3, r9, r5
	macc	r3, r1, r6
	srli	r5, r9, 16
	macc	r9, r1, r6
	slli	r1, r9, 16
	or	r1, r1, r2
	add	r2, r4, r5
	srli	r3, r3, 16
	add	r2, r2, r3
	llwi	r10, sp[0]              # 4-byte Folded Reload
	llwi	r9, sp[4]               # 4-byte Folded Reload
	addi	sp, sp, 2
	ret
	.set	macro
	.set	reorder
	.end	__muldi3
rfunc_end2:
	.size	__muldi3, rfunc_end2-__muldi3

	.globl	__mulsf3
	.align	2
	.type	__mulsf3,@function
	.ent	__mulsf3                # @__mulsf3
__mulsf3:
	.frame	sp,32,lr
	.mask 	0x0001fe00,-4
	.set	noreorder
	.set	nomacro
# BB#0:
	addi	sp, sp, -8
	lswi	r9, sp[28]              # 4-byte Folded Spill
	lswi	r10, sp[24]             # 4-byte Folded Spill
	lswi	r11, sp[20]             # 4-byte Folded Spill
	lswi	r12, sp[16]             # 4-byte Folded Spill
	lswi	r13, sp[12]             # 4-byte Folded Spill
	lswi	r14, sp[8]              # 4-byte Folded Spill
	lswi	r15, sp[4]              # 4-byte Folded Spill
	lswi	r16, sp[0]              # 4-byte Folded Spill
	xor	r3, r2, r1
	li	r11, 0
	lui	r11, 32768
	and	r10, r3, r11
	srli	r3, r1, 23
	andi	r13, r3, 255
	addi	r3, r13, -1
	addi	r4, r0, 253
	sltu	r5, r4, r3
	li	r12, 65535
	lui	r12, 127
	and	r3, r1, r12
	and	r4, r2, r12
	srli	r6, r2, 23
	andi	r14, r6, 255
	bne	r5, r0, LBB3_2
# BB#1:
	addi	r15, r0, 0
	addi	r5, r14, -1
	addi	r6, r0, 254
	sltu	r5, r5, r6
	bne	r5, r0, LBB3_14
LBB3_2:
	li	r7, 65535
	lui	r7, 32767
	and	r5, r1, r7
	li	r1, 0
	lui	r1, 32704
	li	r6, 0
	lui	r6, 32640
	sltu	r8, r6, r5
	bne	r8, r0, LBB3_20
# BB#3:
	and	r2, r2, r7
	sltu	r7, r6, r2
	bne	r7, r0, LBB3_20
# BB#4:
	beq	r5, r6, LBB3_6
# BB#5:
	bne	r2, r6, LBB3_7
	beq	r0, r0, LBB3_6
LBB3_7:
	beq	r5, r0, LBB3_9
# BB#8:
	bne	r2, r0, LBB3_10
	beq	r0, r0, LBB3_9
LBB3_10:
	sltu	r1, r12, r5
	addi	r15, r0, 0
	bne	r1, r0, LBB3_12
# BB#11:
	srli	r1, r3, 1
	or	r1, r3, r1
	srli	r5, r1, 2
	or	r1, r1, r5
	srli	r5, r1, 4
	or	r1, r1, r5
	srli	r5, r1, 8
	or	r1, r1, r5
	srli	r5, r1, 16
	nor	r1, r1, r5
	li	r5, 21845
	lui	r5, 21845
	srli	r6, r1, 1
	and	r5, r6, r5
	sub	r1, r1, r5
	li	r5, 13107
	lui	r5, 13107
	and	r6, r1, r5
	srli	r1, r1, 2
	and	r1, r1, r5
	add	r1, r6, r1
	srli	r5, r1, 4
	add	r1, r1, r5
	li	r5, 3855
	lui	r5, 3855
	and	r1, r1, r5
	li	r5, 257
	lui	r5, 257
	mul	r1, r1, r5
	srli	r1, r1, 24
	addi	r5, r0, 9
	sub	r15, r5, r1
	addi	r1, r1, 24
	andi	r1, r1, 31
	sll	r3, r3, r1
LBB3_12:
	sltu	r1, r12, r2
	bne	r1, r0, LBB3_14
# BB#13:
	srli	r1, r4, 1
	or	r1, r4, r1
	srli	r2, r1, 2
	or	r1, r1, r2
	srli	r2, r1, 4
	or	r1, r1, r2
	srli	r2, r1, 8
	or	r1, r1, r2
	srli	r2, r1, 16
	nor	r1, r1, r2
	li	r2, 21845
	lui	r2, 21845
	srli	r5, r1, 1
	and	r2, r5, r2
	sub	r1, r1, r2
	li	r2, 13107
	lui	r2, 13107
	and	r5, r1, r2
	srli	r1, r1, 2
	and	r1, r1, r2
	add	r1, r5, r1
	srli	r2, r1, 4
	add	r1, r1, r2
	li	r2, 3855
	lui	r2, 3855
	and	r1, r1, r2
	li	r2, 257
	lui	r2, 257
	mul	r1, r1, r2
	addi	r2, r15, 9
	srli	r1, r1, 24
	sub	r15, r2, r1
	addi	r1, r1, 24
	andi	r1, r1, 31
	sll	r4, r4, r1
LBB3_14:                                # %.thread11
	slli	r1, r4, 8
	or	r1, r1, r11
	li	r16, 0
	lui	r16, 128
	or	r3, r3, r16
	addi	r9, r0, 0
	add	r2, r0, r9
	add	r4, r0, r9
	jsub	__muldi3
	srli	r3, r1, 31
	add	r4, r2, r2
	or	r3, r4, r3
	and	r4, r2, r16
	srli	r4, r4, 23
	movn	r3, r2, r4
	xori	r2, r4, 1
	sll	r1, r1, r2
	add	r2, r13, r14
	add	r2, r2, r15
	add	r2, r2, r4
	addi	r2, r2, -127
	slt	r4, r0, r2
	bne	r4, r0, LBB3_18
# BB#15:
	addi	r4, r0, 1
	sub	r4, r4, r2
	addi	r5, r0, 31
	sltu	r5, r5, r4
	bne	r5, r0, LBB3_17
	beq	r0, r0, LBB3_16
LBB3_17:
	add	r1, r0, r10
	beq	r0, r0, LBB3_20
LBB3_6:
	xor	r1, r5, r6
	movz	r5, r2, r1
	or	r2, r10, r6
	li	r1, 0
	lui	r1, 32704
	movn	r1, r2, r5
	beq	r0, r0, LBB3_20
LBB3_16:                                # %.thread13
	sub	r5, r0, r4
	andi	r5, r5, 31
	andi	r4, r4, 31
	srl	r6, r1, r4
	sll	r7, r3, r5
	or	r6, r7, r6
	sll	r1, r1, r5
	xor	r1, r1, r0
	sltu	r1, r0, r1
	or	r1, r6, r1
	srl	r3, r3, r4
	beq	r0, r0, LBB3_19
LBB3_9:
	add	r1, r0, r10
	beq	r0, r0, LBB3_20
LBB3_18:
	and	r3, r3, r12
	slli	r4, r2, 23
	or	r3, r3, r4
LBB3_19:
	or	r3, r3, r10
	sltu	r4, r11, r1
	add	r3, r4, r3
	xor	r1, r1, r11
	andi	r4, r3, 1
	movz	r9, r4, r1
	add	r1, r9, r3
	addi	r3, r0, 254
	slt	r2, r3, r2
	li	r3, 0
	lui	r3, 32640
	or	r3, r10, r3
	movn	r1, r3, r2
LBB3_20:                                # %.thread
	llwi	r16, sp[0]              # 4-byte Folded Reload
	llwi	r15, sp[4]              # 4-byte Folded Reload
	llwi	r14, sp[8]              # 4-byte Folded Reload
	llwi	r13, sp[12]             # 4-byte Folded Reload
	llwi	r12, sp[16]             # 4-byte Folded Reload
	llwi	r11, sp[20]             # 4-byte Folded Reload
	llwi	r10, sp[24]             # 4-byte Folded Reload
	llwi	r9, sp[28]              # 4-byte Folded Reload
	addi	sp, sp, 8
	ret
	.set	macro
	.set	reorder
	.end	__mulsf3
rfunc_end3:
	.size	__mulsf3, rfunc_end3-__mulsf3

	.globl	matrix_multiply
	.align	2
	.type	matrix_multiply,@function
	.ent	matrix_multiply         # @matrix_multiply
matrix_multiply:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r2, 2
	lp	r6, 0
	lp	r4, 1
	#APP
	lid r3, 1
	#NO_APP
	#APP
	wgoff r5, 1
	#NO_APP
	add	r7, r5, r3
	#APP
	lid r3, 0
	#NO_APP
	#APP
	wgoff r5, 0
	#NO_APP
	add	r3, r5, r3
	slli	r1, r3, 2
	add	r4, r4, r1
	#APP
	size r5, 0
	#NO_APP
	mul	r1, r5, r7
	slli	r7, r1, 2
	add	r7, r6, r7
	addi	r6, r0, 0
	slli	r8, r5, 2
LBB4_1:                                 # =>This Inner Loop Header: Depth=1
	lw	r9, r7[r0]
	lw	r10, r4[r0]
	macc	r6, r10, r9
	add	r4, r4, r8
	addi	r7, r7, 4
	addi	r5, r5, -1
	bne	r5, r0, LBB4_1
# BB#2:
	add	r1, r1, r3
	sw	r6, r2[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply
rfunc_end4:
	.size	matrix_multiply, rfunc_end4-matrix_multiply

	.globl	matrix_multiply_half
	.align	2
	.type	matrix_multiply_half,@function
	.ent	matrix_multiply_half    # @matrix_multiply_half
matrix_multiply_half:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r2, 2
	lp	r6, 0
	lp	r4, 1
	#APP
	lid r3, 1
	#NO_APP
	#APP
	wgoff r5, 1
	#NO_APP
	add	r7, r5, r3
	#APP
	lid r3, 0
	#NO_APP
	#APP
	wgoff r5, 0
	#NO_APP
	add	r3, r5, r3
	slli	r1, r3, 1
	add	r4, r4, r1
	#APP
	size r5, 0
	#NO_APP
	mul	r1, r5, r7
	slli	r7, r1, 1
	add	r7, r6, r7
	addi	r6, r0, 0
	slli	r8, r5, 1
LBB5_1:                                 # =>This Inner Loop Header: Depth=1
	xori	r9, r4, 30
	slli	r9, r9, 3
	lw	r10, r4[r0]
	sll	r9, r10, r9
	xori	r10, r7, 30
	slli	r10, r10, 3
	lw	r11, r7[r0]
	sll	r10, r11, r10
	srai	r10, r10, 16
	srai	r9, r9, 16
	macc	r6, r9, r10
	add	r4, r4, r8
	addi	r7, r7, 2
	addi	r5, r5, -1
	bne	r5, r0, LBB5_1
# BB#2:
	add	r1, r1, r3
	sh	r6, r2[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply_half
rfunc_end5:
	.size	matrix_multiply_half, rfunc_end5-matrix_multiply_half

	.globl	matrix_multiply_half_improved
	.align	2
	.type	matrix_multiply_half_improved,@function
	.ent	matrix_multiply_half_improved # @matrix_multiply_half_improved
matrix_multiply_half_improved:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r2, 2
	lp	r3, 1
	lp	r5, 0
	#APP
	lid r4, 1
	#NO_APP
	#APP
	wgoff r6, 1
	#NO_APP
	add	r6, r6, r4
	#APP
	lid r7, 0
	#NO_APP
	#APP
	wgoff r8, 0
	#NO_APP
	#APP
	size r4, 0
	#NO_APP
	mul	r1, r4, r6
	srli	r9, r1, 31
	macc	r9, r4, r6
	slli	r6, r9, 1
	addi	r9, r0, -4
	and	r6, r6, r9
	add	r6, r5, r6
	add	r5, r8, r7
	add	r8, r4, r8
	add	r10, r8, r7
	addi	r7, r0, 0
	slli	r8, r5, 1
	slli	r9, r4, 2
	slli	r10, r10, 1
LBB6_1:                                 # =>This Inner Loop Header: Depth=1
	lb	r11, r3[r8]
	add	r12, r3, r8
	xori	r12, r12, 30
	slli	r12, r12, 3
	sll	r11, r11, r12
	srai	r11, r11, 16
	lw	r12, r6[r0]
	slli	r13, r12, 16
	srai	r13, r13, 16
	macc	r7, r13, r11
	lb	r11, r3[r10]
	add	r13, r3, r10
	xori	r13, r13, 30
	slli	r13, r13, 3
	sll	r11, r11, r13
	srai	r11, r11, 16
	srai	r12, r12, 16
	macc	r7, r11, r12
	add	r3, r3, r9
	addi	r6, r6, 4
	addi	r4, r4, -2
	bne	r4, r0, LBB6_1
# BB#2:
	add	r1, r1, r5
	sh	r7, r2[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply_half_improved
rfunc_end6:
	.size	matrix_multiply_half_improved, rfunc_end6-matrix_multiply_half_improved

	.globl	matrix_multiply_byte
	.align	2
	.type	matrix_multiply_byte,@function
	.ent	matrix_multiply_byte    # @matrix_multiply_byte
matrix_multiply_byte:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r2, 2
	lp	r3, 0
	lp	r5, 1
	#APP
	lid r6, 1
	#NO_APP
	#APP
	wgoff r7, 1
	#NO_APP
	#APP
	lid r4, 0
	#NO_APP
	#APP
	wgoff r8, 0
	#NO_APP
	add	r4, r4, r8
	add	r5, r5, r4
	add	r8, r7, r6
	addi	r6, r0, 0
	#APP
	size r7, 0
	#NO_APP
	macc	r3, r7, r8
	mul	r1, r7, r8
	add	r8, r0, r6
LBB7_1:                                 # =>This Inner Loop Header: Depth=1
	lb	r9, r3[r6]
	add	r10, r3, r6
	xori	r10, r10, 31
	slli	r10, r10, 3
	sll	r9, r9, r10
	xori	r10, r5, 31
	slli	r10, r10, 3
	lw	r11, r5[r0]
	sll	r10, r11, r10
	srai	r9, r9, 24
	srai	r10, r10, 24
	macc	r8, r10, r9
	add	r5, r5, r7
	addi	r6, r6, 1
	bne	r7, r6, LBB7_1
# BB#2:
	add	r1, r1, r4
	sb	r8, r2[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply_byte
rfunc_end7:
	.size	matrix_multiply_byte, rfunc_end7-matrix_multiply_byte

	.globl	matrix_multiply_byte_improved
	.align	2
	.type	matrix_multiply_byte_improved,@function
	.ent	matrix_multiply_byte_improved # @matrix_multiply_byte_improved
matrix_multiply_byte_improved:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r2, 2
	lp	r6, 1
	lp	r5, 0
	#APP
	lid r3, 1
	#NO_APP
	#APP
	wgoff r4, 1
	#NO_APP
	add	r4, r4, r3
	#APP
	lid r7, 0
	#NO_APP
	#APP
	wgoff r8, 0
	#NO_APP
	#APP
	size r3, 0
	#NO_APP
	mul	r1, r3, r4
	srai	r9, r1, 31
	srli	r9, r9, 30
	macc	r9, r3, r4
	addi	r4, r0, -4
	and	r9, r9, r4
	add	r4, r8, r7
	add	r5, r5, r9
	add	r6, r6, r4
	addi	r7, r0, 0
	slli	r8, r3, 1
	addi	r9, r0, 3
	mul	r9, r3, r9
	slli	r10, r3, 2
	add	r11, r0, r7
LBB8_1:                                 # =>This Inner Loop Header: Depth=1
	xori	r12, r6, 31
	slli	r12, r12, 3
	lw	r13, r6[r0]
	sll	r12, r13, r12
	lb	r13, r5[r7]
	slli	r14, r13, 24
	srai	r14, r14, 24
	srai	r12, r12, 24
	macc	r11, r14, r12
	add	r12, r6, r3
	xori	r12, r12, 31
	slli	r12, r12, 3
	lb	r14, r6[r3]
	sll	r12, r14, r12
	srai	r12, r12, 24
	slli	r14, r13, 16
	srai	r14, r14, 24
	macc	r11, r12, r14
	lb	r12, r6[r8]
	add	r14, r6, r8
	xori	r14, r14, 31
	slli	r14, r14, 3
	sll	r12, r12, r14
	srai	r12, r12, 24
	slli	r14, r13, 8
	srai	r14, r14, 24
	macc	r11, r12, r14
	lb	r12, r6[r9]
	add	r14, r6, r9
	xori	r14, r14, 31
	slli	r14, r14, 3
	sll	r12, r12, r14
	srai	r12, r12, 24
	srai	r13, r13, 24
	macc	r11, r12, r13
	add	r6, r6, r10
	addi	r7, r7, 4
	bne	r3, r7, LBB8_1
# BB#2:
	add	r1, r1, r4
	sb	r11, r2[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply_byte_improved
rfunc_end8:
	.size	matrix_multiply_byte_improved, rfunc_end8-matrix_multiply_byte_improved

	.globl	matrix_multiply_float
	.align	2
	.type	matrix_multiply_float,@function
	.ent	matrix_multiply_float   # @matrix_multiply_float
matrix_multiply_float:
	.frame	sp,0,lr
	.mask 	0x00000000,0
	.set	noreorder
	.set	nomacro
# BB#0:
	lp	r10, 2
	lp	r2, 0
	lp	r3, 1
	#APP
	lid r4, 1
	#NO_APP
	#APP
	wgoff r5, 1
	#NO_APP
	add	r4, r5, r4
	#APP
	lid r5, 0
	#NO_APP
	#APP
	wgoff r6, 0
	#NO_APP
	add	r11, r6, r5
	slli	r1, r11, 2
	add	r12, r3, r1
	#APP
	size r14, 0
	#NO_APP
	mul	r13, r14, r4
	slli	r1, r13, 2
	add	r15, r2, r1
	addi	r9, r0, 0
	slli	r16, r14, 2
LBB9_1:                                 # =>This Inner Loop Header: Depth=1
	lw	r1, r15[r0]
	lw	r2, r12[r0]
	jsub	__mulsf3
	add	r2, r0, r1
	add	r1, r0, r9
	jsub	__addsf3
	add	r9, r0, r1
	add	r12, r12, r16
	addi	r15, r15, 4
	addi	r14, r14, -1
	bne	r14, r0, LBB9_1
# BB#2:
	add	r1, r13, r11
	sw	r9, r10[r1]
	ret
	.set	macro
	.set	reorder
	.end	matrix_multiply_float
rfunc_end9:
	.size	matrix_multiply_float, rfunc_end9-matrix_multiply_float

