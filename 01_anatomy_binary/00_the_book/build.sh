NAME=compilation_example

gcc -E -P ${NAME}.c > ${NAME}.c.postprocessed
cat ${NAME}.c.postprocessed

gcc -S -masm=intel ${NAME}.c
cat ${NAME}.s


gcc -c ${NAME}.c
file ${NAME}.o

gcc -o ${NAME}.bin ${NAME}.c
readelf --syms ${NAME}.bin

strip --strip-all -o ${NAME}.bin.stripped ${NAME}.bin

objdump -sj .rodata ${NAME}.o

objdump -M intel -d ${NAME}.o

readelf --relocs ${NAME}.o

objdump -M intel -d ${NAME}.bin

objdump -M intel -d ${NAME}.bin.stripped

readelf -p .interp ${NAME}.bin
