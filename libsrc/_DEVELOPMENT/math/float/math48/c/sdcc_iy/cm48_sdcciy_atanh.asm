
; float atanh(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdcciy_atanh

EXTERN cm48_sdcciyp_dx2m48, am48_atanh, cm48_sdcciyp_m482d

cm48_sdcciy_atanh:

   call cm48_sdcciyp_dx2m48
   
   call am48_atanh
   
   jp cm48_sdcciyp_m482d
