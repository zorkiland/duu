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
xcopy main.prg VICE\bin\*.* /Y
xcopy blitz.prg VICE\bin\*.* /Y
xcopy asm.raster.prg VICE\bin\*.* /Y
xcopy txt.intro.seq VICE\bin\*.* /Y
xcopy txt.ende.seq VICE\bin\*.* /Y


REM SCHREIBE DISK
cd VICE
cd bin
c1541 -format "main,id" d64 main.d64
c1541 -attach main.d64 -write loader.prg loader
c1541 -attach main.d64 -write main.prg main
c1541 -attach main.d64 -write blitz.prg blitz
c1541 -attach main.d64 -write asm.raster.prg asm.raster
c1541 -attach main.d64 -write txt.intro.seq txt.intro,s
c1541 -attach main.d64 -write txt.ende.seq txt.ende,s

cd..
cd..

REM COPY main.D64->PROJECT
xcopy VICE\bin\main.d64 *.* /Y

pause
rem exit
rem exit
REM START EMU
micro64.exe VICE\bin\main.d64