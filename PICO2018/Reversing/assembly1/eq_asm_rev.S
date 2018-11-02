.intel_syntax noprefix
.bits 32
	
.global asm1


#0x255
asm1:
	push	ebp           #Function prologue
	mov	ebp,esp				#Function prologue
	cmp	DWORD PTR [ebp+0x8],0xea   #this compare the given value to 0xea which is false
	jg 	part_a	#so we will jump to part a ignoring everything after this
	cmp	DWORD PTR [ebp+0x8],0x8
	jne	part_b
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3
	jmp	part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x6#afain cmp to 0x6 which is false
	jne	part_c       #jumpnot equal to part c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
	cmp	DWORD PTR [ebp+0x8],0x126
	jne	part_c
	mov	eax,DWORD PTR [ebp+0x8]
	sub	eax,0x3
	jmp	part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]
	add	eax,0x3  #here we simply add 0x255+0x3 and boom the answer
part_d:
	pop	ebp
	ret
