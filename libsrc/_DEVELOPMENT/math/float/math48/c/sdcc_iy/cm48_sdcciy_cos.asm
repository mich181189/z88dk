
; float cos(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdcciy_cos

EXTERN cm48_sdcciyp_dx2m48, am48_cos, cm48_sdcciyp_m482d

cm48_sdcciy_cos:

   call cm48_sdcciyp_dx2m48
   
   call am48_cos
   
   jp cm48_sdcciyp_m482d
