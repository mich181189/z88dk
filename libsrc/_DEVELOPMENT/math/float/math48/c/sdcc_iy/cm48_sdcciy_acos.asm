
; float acos(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdcciy_acos

EXTERN cm48_sdcciyp_dx2m48, am48_acos, cm48_sdcciyp_m482d

cm48_sdcciy_acos:

   call cm48_sdcciyp_dx2m48
   
   call am48_acos
   
   jp cm48_sdcciyp_m482d
