# Simple Registration ASM

This program can be used for member registration, it will save the user input to a file which named `database.txt`. For every recorded input has its unixtime that represents to time when the user finished submitted their information.

# Installation
```
sudo apt install nasm -y

git clone https://github.com/ammarfaizi2/simple-registration-asm

cd simple-registration-asm

nasm -felf64 src/main.asm -o src/main.o

ld src/main.o -o main
```
