; ******************************************************
; FINNAP OS BOOT FILE
; Version 0.00.01
; CopyRights 2014 Finnap OS dev team
; Open Sourced Under Apache V2 License
; ******************************************************

.include "C:\VMLAB\include\m8def.inc"

; Define here the variables
;
.def  temp  =r16

; Define here Reset and interrupt vectors, if any
;
reset:
   rjmp boot
   rjmp int_0     ; Addr $01
   rjmp int_1     ; Addr $02
   rjmp timer2_comp     ; Addr $03
   rjmp timer2_ovf     ; Addr $04
   rjmp timer1_capt     ; Addr $05
   rjmp timer1_compa     ; Addr $06        Use 'rjmp myVector'
   rjmp timer1_compb     ; Addr $07        to define a interrupt vector
   rjmp timer1_ovf     ; Addr $08
   rjmp timer0_ovf     ; Addr $09
   rjmp spi     ; Addr $0A
   rjmp  rxc    ; Addr $0B        This is just an example
   rjmp  udre    ; Addr $0C        Not all MCUs have the same
   rjmp  txc    ; Addr $0D        number of interrupt vectors
   rjmp   adc   ; Addr $0E
   rjmp   ee_RDY   ; Addr $0F
   rjmp     ana_comp ; Addr $10
   rjmp twi ;Addr $11
   rjmp spm_rdy ;Addr $12

; Program starts here after Reset
;
  int_0:
  reti     ; Addr $01
  int_1 : reti    ; Addr $02
    timer2_comp: reti     ; Addr $03
    timer2_ovf: reti     ; Addr $04
    timer1_capt: reti     ; Addr $05
    timer1_compa: reti     ; Addr $06
    timer1_compb: reti     ; Addr $07
    timer1_ovf: reti     ; Addr $08
    timer0_ovf: reti     ; Addr $09
    spi: reti     ; Addr $0A
     rxc: reti    ; Addr $0B
     udre: reti    ; Addr $0C
     txc: reti    ; Addr $0D
      adc: reti   ; Addr $0E
      ee_RDY: reti   ; Addr $0F
        ana_comp: reti ; Addr $10
    twi: reti ;Addr $11
    spm_rdy: reti

boot:
      ;

in_def:
   nop
   nop       ; Infinite loop.
   nop       ; Define your main system
   nop       ; behaviour here
rjmp in_def

