
; int fprintf(FILE *stream, const char *format, ...)

XDEF fprintf

fprintf:

   push ix
   
   call asm_fprintf
   
   pop ix
   ret

   INCLUDE "../../z80/asm_fprintf.asm"
