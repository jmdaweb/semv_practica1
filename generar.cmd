@echo off
java -jar java-cup-11b.jar -destdir src parser.cup
start jflex -d src lexico.flex
del src\AnalizadorLexico.java~
pause
