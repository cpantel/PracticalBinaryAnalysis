NAME="functions"

gcc -S -masm=intel ${NAME}.c

gcc -c ${NAME}.c

gcc ${NAME}.c


cat ${NAME}.s

objdump -M intel -d ${NAME}.o
objdump -M intel -d a.out


strip --strip-all -o a.out.stripped a.out

objdump -M intel -d a.out.stripped

