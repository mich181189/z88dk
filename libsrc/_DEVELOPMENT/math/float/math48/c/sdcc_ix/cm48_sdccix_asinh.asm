
; float asinh(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdccix_asinh

EXTERN cm48_sdccixp_dx2m48, am48_asinh, cm48_sdccixp_m482d

cm48_sdccix_asinh:

   call cm48_sdccixp_dx2m48
   
   call am48_asinh
   
   jp cm48_sdccixp_m482d
