.data

bin db 64 dup("0")  , 00h

.code

intobin proc
;This procedure takes an int (stored in rcx) and convert it to binary representation
;the result is returned as a pointer in rax
push rbx

mov rbx,rcx
mov rdx,rcx
lea rax,bin

mov r8,0
mov cl,63

myloop:
shr rdx,cl
and rdx,1
add rdx,48
mov [rax+r8],rdx

mov rdx,rbx
inc r8
dec cl
cmp cl,-1

jne myloop

pop rbx
ret
intobin endp

end