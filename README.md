# Simple Registration ASM

This program can be used for member registration, it saves the user input into a file which named `database.txt`. For every recorded input has its unixtime that represents the time when the user submitted their informations.

If the file `database.txt` does not exist, the program will automatically create this file. Make sure the working directory is writeable, so the program can create the file.

### File preview for database.txt after registration

```
1552293237|Ammar Faizi|ammarfaizi2@gmail.com|+6285867152777
1552293253|Septian Hari Nugroho|septianhari@gmail.com|0857123123123
1552293280|Fernano Dioni|fernando.dioni@gmail.com|087666333222
1552293298|Ian Mustafa|ianmustafa@gmail.com|089123456678
1552293319|Eko Prasetyo|ekoprasetyo@gmail.com|089993141000
1552293344|Agil Baskar Gumilar|ab.gumilar@gmail.com|0827244129102
```

# Installation
```shell
sudo apt install nasm -y

git clone https://github.com/ammarfaizi2/simple-registration-asm

cd simple-registration-asm

nasm -felf64 src/main.asm -o src/main.o

ld src/main.o -o main

./main # Run the program
```

# Contribute
You can just submit a pull request.
