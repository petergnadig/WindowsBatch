REM A PhotoMove2 Program �ltal �v // �v_H�nap // �v_H�nap_Nap szerkezet�re sz�tosztott k�p k�nyvt�rakat 
REM rendezi �t, oly m�don, hogy az �v �s �v_H�nap szinteket kihagyva az �sszes k�nyvt�rat felhozza a REM legfels� szintre

REM Param�ter: A legfels� szint TELJES EL�R�SI �TJA
REM Pl: C:\K�pek\IdeRaktaAmitRendezett

REM Ez a h�rmas ciklus mozgatja fel a k�nyvt�rakat
for /d %%x in (%1\*) do for /d %%y in (%%x\*) do for /d %%z in (%%y\*) do move %%z %1


REM Ez meg lecser�li a nev�kben a "_" karaktert " "-re
for /d %%x in (%1\*) do call :next "%%x"
pause 
goto :EOF
:next
set "newname=%1"
set "newname=%newname:_= %"
move %1 %Newname%