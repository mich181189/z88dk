
; float log2(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdcciy_log2

EXTERN cm48_sdcciyp_dx2m48, am48_log2, cm48_sdcciyp_m482d

cm48_sdcciy_log2:

   call cm48_sdcciyp_dx2m48
   
   call am48_log2
   
   jp cm48_sdcciyp_m482d
