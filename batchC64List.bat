@echo off

REM C64List BAS->PRG
c64list main.bas -prg -ovr -rem -crunch -supervariables -labels
c64list loader.bas -prg -ovr -rem -crunch
c64list asm.raster.asm -prg -ovr
pause

REM BLITZ
blitz main.prg -o blitz.prg

REM BACK BASIC
c64list main.prg -txt -ovr


REM COPY PRG->VICE\bin
xcopy loader.prg VICE\bin\*.* /Y
xcopy blitz.prg VICE\bin\*.* /Y
xcopy asm.raster.prg VICE\bin\*.* /Y
xcopy txt.intro.seq VICE\bin\*.* /Y
xcopy txt.ende.seq VICE\bin\*.* /Y
xcopy txt.welcome.lena.seq VICE\bin\*.* /Y
xcopy txt.welcome.dolm.seq VICE\bin\*.* /Y
xcopy txt.welcome.mira.seq VICE\bin\*.* /Y


REM SCHREIBE DISK
cd VICE
cd bin
c1541 -format "dungeon,id" d64 dungeon.d64
c1541 -attach dungeon.d64 -write loader.prg loader
c1541 -attach dungeon.d64 -write blitz.prg blitz
c1541 -attach dungeon.d64 -write asm.raster.prg asm.raster
c1541 -attach dungeon.d64 -write txt.intro.seq txt.intro,s
c1541 -attach dungeon.d64 -write txt.ende.seq txt.ende,s
c1541 -attach dungeon.d64 -write txt.welcome.lena.seq txt.welcome.lena,s
c1541 -attach dungeon.d64 -write txt.welcome.dolm.seq txt.welcome.dolm,s
c1541 -attach dungeon.d64 -write txt.welcome.mira.seq txt.welcome.mira,s

cd..
cd..

REM COPY VICE\bin\dungen.D64-> ROOT
xcopy VICE\bin\dungeon.d64 *.* /Y

REM COPY dungen.D64 -> CCS64
xcopy dungeon.d64 CCS64\*.* /Y


pause
rem exit
rem exit
REM START EMU
rem micro64.exe VICE\bin\dungeon.d64
cd CCS64
ccs64.exe dungeon.d64