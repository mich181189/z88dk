
; long lrint(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdcciy_lrint

EXTERN cm48_sdcciyp_dx2m48, am48_lrint

cm48_sdcciy_lrint:

   call cm48_sdcciyp_dx2m48
   
   jp am48_lrint
