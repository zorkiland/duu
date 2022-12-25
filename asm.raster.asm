{asm}

;STARTADRESSE
orig $334       ; SYS 820

	sei         ; Setze Interrupt-Flag
	lda $3fe    ; Rasterzeile POKE 1022,74
	sta $d012   ; Schreibe Raster
	lda $d011   ; High-Bit löschen VIC
	and #$7f    ; Logisches "Und"
	sta $d011   ; High-Bit löschen VIC
	lda $d01a   ; Rasterzeilen-Interrupt einschalten
	ora #$01    ; Logisches "Oder"
	sta $d01a   ; Rasterzeilen-Interrupt einschalten
	lda #<irq   ; Interrupt-Routine verbiegen
	sta $0314   ; Vektor: Hardware Interrupt (IRQ)
	lda #>irq   ; Interrupt-Routine verbiegen
	sta $0315   ; Vektor: Hardware Interrupt (IRQ)
	cli         ; Lösche Interrupt-Flag
	rts         ; Rückkehr aus Unterprogramm

;JMP IRQ
irq:
	lda $d019   ; Test auf VIC-Interrupt
	bmi vic_irq ; Verzweige bei gesetztem Negative-Flag
	lda $dc0d   ; Timer-Interrupt bestätigen
	cli         ; Neuen VIC-Interrupt zulasen
	jmp $ea31   ; System-Interrupt ausführen

;JMP VIC_IRQ
vic_irq:
	sta $d019   ; VIC-Interrupt bestätigen

;BEI RASTER 74 WEITER IM PROGRAMM
	lda $d012   ; Lade Raster
	cmp $3fe    ; Vergleiche mit Akkumulator
	bne blau    ; Verzweige bei gelöschtem Zero-Flag

;HINTERGRUND SCHWARZ
	lda $3fc    ; Lade Akku POKE 1020
	sta $d021   ; Hintergrund

;SCHREIBE RASTER 202
	lda #202    ; Lade Akku 202
	sta $d012   ; Raster
	bne ende    ; Verzweige bei gelöschtem Zero-Flag

;JMP BLAU
blau:
;HINTERGRUND BLAU
	lda $3fd    ; Lade Akku POKE 1021
	sta $d021   ; Hintergrund
	
;SCHREIBE RASTER 74
	lda $3fe    ; Lade Akku Poke 1020
	sta $d012   ; Raster

;JMP ENDE
ende:
	pla         ; Hole Akkumulatorwert vom Stack
	tay         ; Kopiere Akkumulator zu Y
	pla         ; Hole Akkumulatorwert vom Stack
	tax         ; Kopiere Akkumulator zu Y
	pla         ; Hole Akkumulatorwert vom Stack
	rti         ; Rückkehr aus Interrupt

{endasm}