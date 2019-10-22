gcc compilation_example.c
readelf -h a.out 
readelf -x .shstrtab a.out 
readelf --sections --wide a.out 
objdump -M intel -d a.out 
objdump -M intel --section .plt  -d a.out
readelf --relocs a.out
readelf --dynamic a.out
objdump -d --section .init_array a.out
readelf --segments --wide a.out        


