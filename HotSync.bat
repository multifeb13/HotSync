
@echo off

rem set opt=/MIR /R:0 /W:0 /LOG+:ログファイル出力先 /NP /NDL /TEE
set opt=/MIR /R:0 /W:0 /NP /NDL

rem -------------------------

set src_dir=%1
set dst_dir=%2

rem -------------------------

echo SRC : %src_dir%
echo DST : %dst_dir%

if "%src_dir%". == "". (
	exit
) else if "%dst_dir%". == "". (
	exit
) else (
	rem do nothing
)

robocopy %src_dir% %dst_dir% %opt%
