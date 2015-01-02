REM A PhotoMove2 Program által Év // Év_Hónap // Év_Hónap_Nap szerkezetûre szétosztott kép könyvtárakat 
REM rendezi át, oly módon, hogy az Év és Év_Hónap szinteket kihagyva az összes könyvtárat felhozza a REM legfelsõ szintre

REM Paraméter: A legfelsõ szint TELJES ELÉRÉSI ÚTJA
REM Pl: C:\Képek\IdeRaktaAmitRendezett

REM Ez a hármas ciklus mozgatja fel a könyvtárakat
for /d %%x in (%1\*) do for /d %%y in (%%x\*) do for /d %%z in (%%y\*) do move %%z %1


REM Ez meg lecseréli a nevükben a "_" karaktert " "-re
for /d %%x in (%1\*) do call :next "%%x"
pause 
goto :EOF
:next
set "newname=%1"
set "newname=%newname:_= %"
move %1 %Newname%