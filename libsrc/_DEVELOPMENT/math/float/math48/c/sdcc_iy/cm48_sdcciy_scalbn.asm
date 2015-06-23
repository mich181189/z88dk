
; float scalbn(float x, int n) __z88dk_callee

SECTION code_fp_math48

PUBLIC cm48_sdcciy_scalbn

EXTERN cm48_sdcciyp_d2m48, am48_scalbn, cm48_sdcciyp_m482d

cm48_sdcciy_scalbn:

   pop af
   
   pop de
   pop hl                      ; hlde = float x
   
   exx
   
   pop hl                      ; hl = int n
   
   exx
   
   push af
   
   call cm48_sdcciyp_d2m48
   
   ; AC'= double x
   ; hl = n
   
   call am48_scalbn

   jp cm48_sdcciyp_m482d
