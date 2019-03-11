# Simple Registration ASM

This program can be used for member registration, it saves the user input to a file which named `database.txt`. For every recorded input has its unixtime that represents to time when the user submitted their informations.

If the file `database.txt` does not exist, the program will be automatically create this file. Make sure the working directory is writeable, so that the program can create the file.

### File preview for database.txt after registration

```
1552289499|Ammar Faizi|ammarfaizi2@gmail.com
1552289509|Septian Hari Nugroho|septianhari@gmail.com
1552289525|Fernando Dioni|fernandodioni@gmail.com
1552289549|Ian Mustafa|ianmustafa@gmail.com
1552289564|Eko Prasetyo|ekoprasetyo@gmail.com
```


# Installation
```shell
sudo apt install nasm -y

git clone https://github.com/ammarfaizi2/simple-registration-asm

cd simple-registration-asm

nasm -felf64 src/main.asm -o src/main.o

ld src/main.o -o main
```
