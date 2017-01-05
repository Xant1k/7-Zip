rem Упаковка (создание и синхронизация архива) рабочей папки

echo archive v.1.4. Archive script for Win32/XP/Win7. 03.12.2009
d:\progra~1\7-zip\7z.exe u -t%1 -mx9 -mmt=on %6 -ms=%7 %9 -ssw %2 -up1q0r2x1y2z1w2 -xr!.svn -xr@%3 -i%8@%4  -scs%5