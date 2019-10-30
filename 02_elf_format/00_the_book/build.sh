NAME=compilation_example


gcc -o ${NAME}.bin ${NAME}.c


readelf -h ${NAME}.bin
readelf -x .shstrtab ${NAME}.bin
readelf --sections --wide ${NAME}.bin
objdump -M intel -d ${NAME}.bin
objdump -M intel --section .plt  -d ${NAME}.bin
readelf --relocs ${NAME}.bin
readelf --dynamic ${NAME}.bin
objdump -d --section .init_array ${NAME}.bin
readelf --segments --wide ${NAME}.bin

