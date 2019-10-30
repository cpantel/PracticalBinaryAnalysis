  NAME="compilation_example"
  {  ( objdump --section-headers "$NAME.c.bin" | fgrep " ." | cut -b5- | cut -d" " -f 1 ) \
   & ( objdump --section-headers "$NAME.cpp.bin" | fgrep " ." | cut -b5- | cut -d" " -f 1 ) \
  } \
  | sort | uniq | while read SECTION; do
    echo "##############################################################"
    echo "### $SECTION "
    echo "##############################################################"
    echo ""
    echo "================================ $NAME.c == $SECTION ==="
    objdump -d -M intel --section=${SECTION} "$NAME.c.bin"
    echo "================================ $NAME.cpp == $SECTION ==="
    objdump -d -M intel --section=${SECTION} "$NAME.cpp.bin"
  done

