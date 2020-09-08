;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

;= rem rename tab
re=cmd /c RenameTab "$*"

;= rem open new tab
new=cmd /k %CMDER_ROOT%\vendor\init.bat /icon "%CMDER_ROOT%\icons\cmder.ico" -new_console:C:%CMDER_ROOT%\icons\cmder.ico

;= rem open new tab in admin mode
sudo=cmd /k %CMDER_ROOT%\vendor\init.bat /icon "%CMDER_ROOT%\icons\cmder.ico" -new_console:C:%CMDER_ROOT%\icons\cmder.ico -new_console:a

;= rem open new tab specifing run_dir and tab_name
test_new_tab = cmd /k %CMDER_ROOT%\vendor\init.bat -new_console:d:E:\gaoliu\mycode\vnbit -new_console:t:new_tab_name

gitpp = git pull & git push
