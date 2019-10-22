NAME=compilation_example

gcc -E -P ${NAME}.c > ${NAME}.c.postprocessed
cat ${NAME}.c.postprocessed

gcc -S -masm=intel ${NAME}.c
cat ${NAME}.s


gcc -c ${NAME}.c
file ${NAME}.o

gcc ${NAME}.c
readelf --syms a.out

strip --strip-all -o a.out.stripped a.out

objdump -sj .rodata ${NAME}.o

objdump -M intel -d ${NAME}.o

readelf --relocs ${NAME}.o

objdump -M intel -d a.out

objdump -M intel -d a.out.stripped

readelf -p .interp a.out
