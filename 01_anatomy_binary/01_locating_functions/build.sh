NAME="functions"

gcc -S -masm=intel ${NAME}.c

gcc -c ${NAME}.c

gcc ${NAME}.c -o ${NAME}.bin


cat ${NAME}.s

objdump -M intel -d ${NAME}.o
objdump -M intel -d ${NAME}.bin


strip --strip-all -o ${NAME}.bin.stripped ${NAME}.bin

objdump -M intel -d ${NAME}.bin.stripped

