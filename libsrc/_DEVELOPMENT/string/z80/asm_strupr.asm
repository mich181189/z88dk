
; ===============================================================
; Dec 2013
; ===============================================================
; 
; char *strupr(char *s)
;
; Change letters in string s to uppercase.
;
; ===============================================================

XLIB asm_strupr

LIB asm_toupper

asm_strupr:

   ; enter: hl = char *s
   ;
   ; exit : hl = char *s
   ;
   ; uses : af

   push hl

loop:

   ld a,(hl)
   or a
   jr z, exit

   call asm_toupper
   ld (hl),a
   
   inc hl
   jr loop

exit:

   pop hl
   ret
