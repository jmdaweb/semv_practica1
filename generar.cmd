@echo off
java -jar java-cup-11b.jar -destdir src\com\semv\practica1\syntactic parser.cup
start jflex -d src\com\semv\practica1\lexer lexico.flex
pause
