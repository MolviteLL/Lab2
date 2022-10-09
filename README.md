# Лабораторная работа №2 (Вариант 10)
---
> __Условие:__
Создать файл sh и bat, который выполняет следующее:
На вход файлу подается путь к каталогу, число, обозначающее размер файла (как параметры пакетного файла). Если такой папки нет, то писать “Данной папки нет” и завершить выполнение программы. Если такая папка есть, то создать файл, в котором будут содержаться имена всех файлов указанного каталога (с учетом подкаталогов), размер которых меньше указанного параметра.
---

### Выполнение на bat:
![bat](https://sun9-58.userapi.com/impg/XKx-VjZBIVRzROXnoLH3n2Oyrc2k2ltD0Jf3GA/9-eI3DsIvLs.jpg?size=1096x639&quality=96&sign=c0918ba45e2c12d1e8843f0580e72125&type=album)

```
chcp 1251 - позволяет читать русские символы;
if exist %way% - проверяет, существует ли указанный путь на компьютере;
forfiles /P %way% /S /C "cmd /c if @fsize lss %size% echo @FILE" > resultbat1.2.txt
    ~ forfiles - выполняет для определенной группы файлов;
    ~ /P - задает путь;
    ~ /S - выполнение программы для всех подпапок;
    ~ /C - выполнение для каждого файла;
    ~ @fsize - вовзвращает размер файла в байтах;
    ~ lss %size% - проверка, меньше ли размер файла заданного размера;
    ~ echo @FILE > resultbat1.2.txt - запись названия файла в определенный txt;
```

### Выполнение на bash:
![bash](https://sun9-12.userapi.com/impg/qw4iPrkxRTkfCDdww67-cVF9KDsPeTwqzPsD1g/JqWxdDxwKvk.jpg?size=739x445&quality=96&sign=84237de9192adce8264df19e0b81489c&type=album)

```
    ~ if [ -d "$way" ] - проверяет, существует ли данный каталог или нет;
    ~ find "$way" - проводит поиск по определенному пути;
    ~ -size -@fsize - проверяет, меньше ли размер файла указанного значения;
    ~ echo | ... > resultbash1.2.txt - записывает выполнение команды find в фалй resultbash1.2.txt;
```
