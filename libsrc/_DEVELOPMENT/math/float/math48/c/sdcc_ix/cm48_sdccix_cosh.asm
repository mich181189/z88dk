
; float cosh(float x) __z88dk_fastcall

SECTION code_fp_math48

PUBLIC cm48_sdccix_cosh

EXTERN cm48_sdccixp_dx2m48, am48_cosh, cm48_sdccixp_m482d

cm48_sdccix_cosh:

   call cm48_sdccixp_dx2m48
   
   call am48_cosh
   
   jp cm48_sdccixp_m482d
