@echo off
color 02
cls
:LINE12
set STP1L=%RANDOM:~0,1%
IF "%STP1L%"=="0" GOTO NUBR1L
IF "%STP1L%"=="1" GOTO LTRS1L
IF "%STP1L%"=="2" GOTO NUBR1L
IF "%STP1L%"=="3" GOTO LTRS1L
IF "%STP1L%"=="4" GOTO NUBR1L
IF "%STP1L%"=="5" GOTO LTRS1L
IF "%STP1L%"=="6" GOTO NUBR1L
IF "%STP1L%"=="7" GOTO LTRS1L
IF "%STP1L%"=="8" GOTO NUBR1L
IF "%STP1L%"=="9" GOTO LTRS1L
:NUBR1L
set NUBR1L=%RANDOM:~0,1%
set PAS12=%NUBR1L%
goto LINE13
:LTRS1L
set LT1L=%RANDOM:~0,1%
IF "%LT1L%"=="0" GOTO TYPL
IF "%LT1L%"=="1" GOTO CAPL
IF "%LT1L%"=="2" GOTO TYPL
IF "%LT1L%"=="3" GOTO CAPL
IF "%LT1L%"=="4" GOTO TYPL
IF "%LT1L%"=="5" GOTO CAPL
IF "%LT1L%"=="6" GOTO TYPL
IF "%LT1L%"=="7" GOTO CAPL
IF "%LT1L%"=="8" GOTO TYPL
IF "%LT1L%"=="9" GOTO CAPL
:CAPL
:CAPA1L
set CAPA1L=%RANDOM:~0,1%
IF "%CAPA1L%"=="0" set PAS12=A
IF "%CAPA1L%"=="1" GOTO CAPA1L
IF "%CAPA1L%"=="2" set PAS12=B
IF "%CAPA1L%"=="3" GOTO CAPA2L
IF "%CAPA1L%"=="4" set PAS12=C
IF "%CAPA1L%"=="5" GOTO CAPA3L
IF "%CAPA1L%"=="6" set PAS12=D
IF "%CAPA1L%"=="7" GOTO CAPA4L
IF "%CAPA1L%"=="8" set PAS12=E
IF "%CAPA1L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA2L
set CAPA2L=%RANDOM:~0,1%
IF "%CAPA2L%"=="0" set PAS12=F
IF "%CAPA2L%"=="1" GOTO CAPA1L
IF "%CAPA2L%"=="2" set PAS12=G
IF "%CAPA2L%"=="3" GOTO CAPA2L
IF "%CAPA2L%"=="4" set PAS12=H
IF "%CAPA2L%"=="5" GOTO CAPA3L
IF "%CAPA2L%"=="6" set PAS12=I
IF "%CAPA2L%"=="7" GOTO CAPA4L
IF "%CAPA2L%"=="8" set PAS12=J
IF "%CAPA2L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA3L
set CAPA3L=%RANDOM:~0,1%
IF "%CAPA3L%"=="0" set PAS12=K
IF "%CAPA3L%"=="1" GOTO CAPA1L
IF "%CAPA3L%"=="2" set PAS12=L
IF "%CAPA3L%"=="3" GOTO CAPA2L
IF "%CAPA3L%"=="4" set PAS12=M
IF "%CAPA3L%"=="5" GOTO CAPA3L
IF "%CAPA3L%"=="6" set PAS12=N
IF "%CAPA3L%"=="7" GOTO CAPA4L
IF "%CAPA3L%"=="8" set PAS12=O
IF "%CAPA3L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA4L
set CAPA4L=%RANDOM:~0,1%
IF "%CAPA4L%"=="0" set PAS12=P
IF "%CAPA4L%"=="1" GOTO CAPA1L
IF "%CAPA4L%"=="2" set PAS12=Q
IF "%CAPA4L%"=="3" GOTO CAPA2L
IF "%CAPA4L%"=="4" set PAS12=R
IF "%CAPA4L%"=="5" GOTO CAPA3L
IF "%CAPA4L%"=="6" set PAS12=S
IF "%CAPA4L%"=="7" GOTO CAPA4L
IF "%CAPA4L%"=="8" set PAS12=U
IF "%CAPA4L%"=="9" GOTO CAPA5L
goto LINE13
:CAPA5L
set CAPA5L=%RANDOM:~0,1%
IF "%CAPA5L%"=="0" set PAS12=V
IF "%CAPA5L%"=="1" GOTO CAPA1L
IF "%CAPA5L%"=="2" set PAS12=W
IF "%CAPA5L%"=="3" GOTO CAPA2L
IF "%CAPA5L%"=="4" set PAS12=X
IF "%CAPA5L%"=="5" GOTO CAPA3L
IF "%CAPA5L%"=="6" set PAS12=Y
IF "%CAPA5L%"=="7" GOTO CAPA4L
IF "%CAPA5L%"=="8" set PAS12=Z
IF "%CAPA5L%"=="9" GOTO CAPA5L
goto LINE13
:TYPL
:TYPA1L
set TYPA1L=%RANDOM:~0,1%
IF "%TYPA1L%"=="0" set PAS12=a
IF "%TYPA1L%"=="1" GOTO TYPA1L
IF "%TYPA1L%"=="2" set PAS12=b
IF "%TYPA1L%"=="3" GOTO TYPA2L
IF "%TYPA1L%"=="4" set PAS12=c
IF "%TYPA1L%"=="5" GOTO TYPA3L
IF "%TYPA1L%"=="6" set PAS12=d
IF "%TYPA1L%"=="7" GOTO TYPA4L
IF "%TYPA1L%"=="8" set PAS12=e
IF "%TYPA1L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA2L
set TYPA2L=%RANDOM:~0,1%
IF "%TYPA2L%"=="0" set PAS12=f
IF "%TYPA2L%"=="1" GOTO TYPA1L
IF "%TYPA2L%"=="2" set PAS12=g
IF "%TYPA2L%"=="3" GOTO TYPA2L
IF "%TYPA2L%"=="4" set PAS12=h
IF "%TYPA2L%"=="5" GOTO TYPA3L
IF "%TYPA2L%"=="6" set PAS12=i
IF "%TYPA2L%"=="7" GOTO TYPA4L
IF "%TYPA2L%"=="8" set PAS12=j
IF "%TYPA2L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA3L
set TYPA3L=%RANDOM:~0,1%
IF "%TYPA3L%"=="0" set PAS12=k
IF "%TYPA3L%"=="1" GOTO TYPA1L
IF "%TYPA3L%"=="2" set PAS12=l
IF "%TYPA3L%"=="3" GOTO TYPA2L
IF "%TYPA3L%"=="4" set PAS12=m
IF "%TYPA3L%"=="5" GOTO TYPA3L
IF "%TYPA3L%"=="6" set PAS12=n
IF "%TYPA3L%"=="7" GOTO TYPA4L
IF "%TYPA3L%"=="8" set PAS12=o
IF "%TYPA3L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA4L
set TYPA4L=%RANDOM:~0,1%
IF "%TYPA4L%"=="0" set PAS12=p
IF "%TYPA4L%"=="1" GOTO TYPA1L
IF "%TYPA4L%"=="2" set PAS12=q
IF "%TYPA4L%"=="3" GOTO TYPA2L
IF "%TYPA4L%"=="4" set PAS12=r
IF "%TYPA4L%"=="5" GOTO TYPA3L
IF "%TYPA4L%"=="6" set PAS12=s
IF "%TYPA4L%"=="7" GOTO TYPA4L
IF "%TYPA4L%"=="8" set PAS12=u
IF "%TYPA4L%"=="9" GOTO TYPA5L
goto LINE13
:TYPA5L
set TYPA5L=%RANDOM:~0,1%
IF "%TYPA5L%"=="0" set PAS12=v
IF "%TYPA5L%"=="1" GOTO TYPA1L
IF "%TYPA5L%"=="2" set PAS12=w
IF "%TYPA5L%"=="3" GOTO TYPA2L
IF "%TYPA5L%"=="4" set PAS12=x
IF "%TYPA5L%"=="5" GOTO TYPA3L
IF "%TYPA5L%"=="6" set PAS12=y
IF "%TYPA5L%"=="7" GOTO TYPA4L
IF "%TYPA5L%"=="8" set PAS12=z
IF "%TYPA5L%"=="9" GOTO TYPA5L
goto LINE13
:LINE13
echo %PAS12%
GOTO LINE13

