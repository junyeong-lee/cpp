	.arch armv8-a
	.text
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,3
	.text
	.align	2
	.globl __Z3addii
__Z3addii:
LFB1778:
	sub	sp, sp, #16
LCFI0:
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w1, w0
	add	sp, sp, 16
LCFI1:
	ret
LFE1778:
	.align	2
	.globl _main
_main:
LFB1780:
	stp	x29, x30, [sp, -16]!
LCFI2:
	mov	x29, sp
	mov	w0, 3
	bl	__Z5sqareIiET_S0_
	mov	x0, 7378697629483820646
	movk	x0, 0x400a, lsl 48
	fmov	d0, x0
	bl	__Z5sqareIdET_S0_
	mov	w0, 0
	ldp	x29, x30, [sp], 16
LCFI3:
	ret
LFE1780:
	.align	2
	.globl __Z5sqareIiET_S0_
	.weak_definition __Z5sqareIiET_S0_
__Z5sqareIiET_S0_:
LFB2041:
	sub	sp, sp, #16
LCFI4:
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	mul	w0, w0, w0
	add	sp, sp, 16
LCFI5:
	ret
LFE2041:
	.align	2
	.globl __Z5sqareIdET_S0_
	.weak_definition __Z5sqareIdET_S0_
__Z5sqareIdET_S0_:
LFB2042:
	sub	sp, sp, #16
LCFI6:
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	fmul	d0, d0, d0
	add	sp, sp, 16
LCFI7:
	ret
LFE2042:
	.align	2
__Z41__static_initialization_and_destruction_0ii:
LFB2277:
	stp	x29, x30, [sp, -32]!
LCFI8:
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	L11
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x0, x0, __ZStL8__ioinit@PAGEOFF;momd
	bl	__ZNSt8ios_base4InitC1Ev
	adrp	x0, ___dso_handle@GOTPAGE
	ldr	x2, [x0, ___dso_handle@GOTPAGEOFF];momd
	adrp	x0, __ZStL8__ioinit@PAGE
	add	x1, x0, __ZStL8__ioinit@PAGEOFF;momd
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF];momd
	bl	___cxa_atexit
L11:
	nop
	ldp	x29, x30, [sp], 32
LCFI9:
	ret
LFE2277:
	.align	2
__GLOBAL__sub_I_template.cpp:
LFB2278:
	stp	x29, x30, [sp, -16]!
LCFI10:
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	bl	__Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
LCFI11:
	ret
LFE2278:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.uleb128 0x1
	.sleb128 -8
	.byte	0x1e
	.uleb128 0x1
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB1778-.
	.set L$set$2,LFE1778-LFB1778
	.quad L$set$2
	.uleb128 0
	.byte	0x4
	.set L$set$3,LCFI0-LFB1778
	.long L$set$3
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1780-.
	.set L$set$6,LFE1780-LFB1780
	.quad L$set$6
	.uleb128 0
	.byte	0x4
	.set L$set$7,LCFI2-LFB1780
	.long L$set$7
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xde
	.byte	0xdd
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$9,LEFDE5-LASFDE5
	.long L$set$9
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2041-.
	.set L$set$10,LFE2041-LFB2041
	.quad L$set$10
	.uleb128 0
	.byte	0x4
	.set L$set$11,LCFI4-LFB2041
	.long L$set$11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$12,LCFI5-LCFI4
	.long L$set$12
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$13,LEFDE7-LASFDE7
	.long L$set$13
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB2042-.
	.set L$set$14,LFE2042-LFB2042
	.quad L$set$14
	.uleb128 0
	.byte	0x4
	.set L$set$15,LCFI6-LFB2042
	.long L$set$15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.set L$set$16,LCFI7-LCFI6
	.long L$set$16
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE7:
LSFDE9:
	.set L$set$17,LEFDE9-LASFDE9
	.long L$set$17
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB2277-.
	.set L$set$18,LFE2277-LFB2277
	.quad L$set$18
	.uleb128 0
	.byte	0x4
	.set L$set$19,LCFI8-LFB2277
	.long L$set$19
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$20,LCFI9-LCFI8
	.long L$set$20
	.byte	0xde
	.byte	0xdd
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE9:
LSFDE11:
	.set L$set$21,LEFDE11-LASFDE11
	.long L$set$21
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB2278-.
	.set L$set$22,LFE2278-LFB2278
	.quad L$set$22
	.uleb128 0
	.byte	0x4
	.set L$set$23,LCFI10-LFB2278
	.long L$set$23
	.byte	0xe
	.uleb128 0x10
	.byte	0x9d
	.uleb128 0x2
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.set L$set$24,LCFI11-LCFI10
	.long L$set$24
	.byte	0xde
	.byte	0xdd
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE11:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 11.2.0_3) 11.2.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_template.cpp
	.subsections_via_symbols
