; ---------------------------------------------------------------------------
; - CPQ466 - COMPAQ Prolinea 4/66 Startup Message (cpq466.asm)              -
; - Copyright (C) 1998-2024 Alexandru Groza of Microprogramming TECHNIQUES  -
; - All rights reserved.                                                    -
; ---------------------------------------------------------------------------
; - License: GNU General Public License v3.0                                -
; ---------------------------------------------------------------------------

P8086
MODEL TINY

CODESEG
  org 100h

STARTUPCODE

  jmp @start

  sMachineNameType  DB   'COMPAQ Prolinea 4/66'

  kMachineNameLen   EQU  06h
  kMachineTypeLen   EQU  0Eh

@start:
  xor bh,bh

  mov ah,03h
  int 10h

  lea bp,sMachineNameType

  mov ax,1301h
  mov bl,04h
  mov cx,kMachineNameLen
  int 10h

  add bp,cx
  add dl,cl

  mov ax,1301h
  mov bl,07h
  mov cx,kMachineTypeLen
  int 10h

  mov ax,0E0Ah
  int 10h

  mov ax,4C00h
  int 21h

end
