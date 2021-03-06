
   IFNDEF CRT_INITIALIZE_BSS
      defc CRT_INITIALIZE_BSS = 1
   ENDIF

   IFDEF REGISTER_SP
      defc __register_sp = REGISTER_SP
   ELSE
      IFDEF STACKPTR
         defc __register_sp = STACKPTR
      ELSE
         IFDEF TAR__register_sp
            defc __register_sp = TAR__register_sp
         ELSE
            defc __register_sp = DEF__register_sp
         ENDIF
      ENDIF
   ENDIF

   IFNDEF CRT_ENABLE_STDIO
       defc CRT_ENABLE_STDIO = 1
   ENDIF

   IFDEF CLIB_EXIT_STACK_SIZE
      defc __clib_exit_stack_size = CLIB_EXIT_STACK_SIZE
   ELSE
      IFDEF TAR__clib_exit_stack_size
         defc __clib_exit_stack_size = TAR__clib_exit_stack_size
      ELSE
         defc __clib_exit_stack_size = DEF__clib_exit_stack_size
      ENDIF
   ENDIF


   PUBLIC __CRT_KEY_DEL
   IFDEF CRT_KEY_DEL
     defc __CRT_KEY_DEL = CRT_KEY_DEL
   ELSE
     defc __CRT_KEY_DEL = 8
   ENDIF

   PUBLIC __CRT_KEY_CAPS_LOCK
   IFDEF CRT_KEY_CAPS_LOCK
     defc __CRT_KEY_CAPS_LOCK  = CRT_KEY_CAPS_LOCK
   ELSE
     defc __CRT_KEY_CAPS_LOCK = 6
   ENDIF

   PUBLIC __CPU_CLOCK
   IFNDEF __CPU_CLOCK
     defc __CPU_CLOCK = 3500000
   ENDIF

   PUBLIC __CLIB_CONIO_NATIVE_COLOUR
   IFDEF CLIB_CONIO_NATIVE_COLOUR
     defc __CLIB_CONIO_NATIVE_COLOUR = CLIB_CONIO_NATIVE_COLOUR
   ELSE
     defc __CLIB_CONIO_NATIVE_COLOUR = 0
   ENDIF

   ; Delay when entering fgetc_cons()
   ; 50ms stops rogue repeats nicely, but may need tuning
   PUBLIC __CLIB_FGETC_CONS_DELAY
   IFDEF CLIB_FGETC_CONS_DELAY
     defc __CLIB_FGETC_CONS_DELAY = CLIB_FGETC_CONS_DELAY
   ELSE
     defc __CLIB_FGETC_CONS_DELAY = 50
   ENDIF

   ; Some ports (looking at you tiki100) need to have graphics routines stored out
   ; of paging harm. Normally we'd just use code_driver and keep the routines close
   ; the start of the address space. However for tiki100, we need them at the end,
   ; (in this case > 32768)
   IF DEFINED_CRT_ORG_GRAPHICS
       defc __crt_org_graphics = CRT_ORG_GRAPHICS
   ENDIF
