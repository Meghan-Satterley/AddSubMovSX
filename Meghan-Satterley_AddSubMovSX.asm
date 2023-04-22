;Meghan Satterley
;CSIS250
;Spring 2022
;This program implements addition and subtracion operations for signed values

TITLE AddSubMovSX (Meghan-Satterley_AddSubMovSX.asm)

INCLUDE Irvine32.inc

;preset three values random positive and negative values to 8 bit, 16 bit and 32 bit signed variables
;declare result signed variables for 8 bit, 16 bit and 32 bit values

.data
 bNum01   SBYTE 127
 bNum02   SBYTE -80
 bNum03   SBYTE 32
 bResult  SBYTE ?

 wNum01   SWORD 32000
 wNum02   SWORD -4096
 wNum03   SWORD 256
 wResult  SWORD ?

 dwNum01  SDWORD 2000000 
 dwNum02  SDWORD -1600000 
 dwNum03  SDWORD 6000
 dwResult SDWORD ?

.code
main PROC

;perform the following operation bResult = bNum01 + bNum02 - bNum03
;in the 32 bit register using MOVSX, ADD, SUB

	movsx  eax,bNum01
	movsx  ebx,bNum02
	add    eax,ebx	
	movsx  ebx,bNum03
	sub    eax,ebx			
	mov    bResult,al  	

	mov  esi,OFFSET   bResult
	mov  ebx,TYPE     bResult
	mov  ecx,LENGTHOF bResult
	call DumpMem

;perform the following operation wResult = wNum01 + wNum02 - wNum03 
;in the 32 bit register using MOVSX, ADD, SUB

	movsx  eax,wNum01
	movsx  ebx,wNum02
	add    eax,ebx
	movsx  ebx,wNum03
	sub    eax,ebx
	mov    wResult,ax

	mov  esi,OFFSET   wResult
	mov  ebx,TYPE     wResult
	mov  ecx,LENGTHOF wResult
	call DumpMem

;perform the following operation dwResult = dwNum01 + dwNum02 - dwNum03 
;in the 32 bit register using MOV, ADD, SUB

	mov eax,dwNum01
	add eax,dwNum02
	sub eax,dwNum03
	mov dwResult,eax

	mov  esi,OFFSET   dwResult
	mov  ebx,TYPE     dwResult
	mov  ecx,LENGTHOF dwResult
	call DumpMem

;perform the following operation wResult = 60000 - wNum01 + 8092 - wNum03 
;in the 16 bit register using MOV, ADD, SUB

	mov ax,60000
	sub ax,wNum01
	add ax,8092
	sub ax,wNum03
	mov wResult,ax

	mov  esi,OFFSET   wResult
	mov  ebx,TYPE     wResult
	mov  ecx,LENGTHOF wResult
	call DumpMem

;perform the following operation wResult = wNum02 - 1 - wNum03 + 2400 
;in the 16 bit register using MOV, ADD, SUB, DEC

	mov ax,wNum02
	dec ax
	sub ax,wNum03
	add ax,2400
	mov wResult,ax

	mov  esi,OFFSET   wResult
	mov  ebx,TYPE     wResult
	mov  ecx,LENGTHOF wResult
	call DumpMem

;perform the following operation dwResult = bNum02 + wNum03 - bNum01 + 1
;in the 32 bit register using MOVSX, ADD, SUB, INC

	movsx eax,bNum02
	movsx ebx,wNum03
	add   eax,ebx
	movsx ebx,bNum01
	sub   eax,ebx
	inc   eax
	mov   dwResult,eax

	mov  esi,OFFSET   dwResult
	mov  ebx,TYPE     dwResult
	mov  ecx,LENGTHOF dwResult
	call DumpMem

;perform the following operation dwResult = -bNum01 + dwNum03 - wNum01 + 1024 
;in the 32 bit register using MOVSX, ADD, SUB, NEG

	movsx eax,bNum01
	neg   eax
	add   eax,dwNum03
	movsx ebx,wNum01
	sub   eax,ebx
	add   eax,1024
	mov   dwResult,eax

	mov  esi,OFFSET   dwResult
	mov  ebx,TYPE     dwResult
	mov  ecx,LENGTHOF dwResult
	call DumpMem

	call Crlf
	call WaitMsg

	exit
main ENDP
END main
