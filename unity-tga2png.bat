@REM Convert using ImageMagick, rename .meta, message to tell which files are done to be able to track
@ECHO off

FOR /R %~dp0 %%b IN ("*.tga") DO (ECHO "%%b" &
    "tools\convert.exe" "%%b" "%%b.png" &
    ren "%%b".meta *.png.meta &
    DEL "%%b")

ECHO Les convertions sont terminées

pause