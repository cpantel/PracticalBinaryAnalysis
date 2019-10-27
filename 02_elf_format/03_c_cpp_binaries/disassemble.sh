
  { ( objdump --section-headers c.exe | fgrep " ." | cut -b5- | cut -d" " -f 1 ) \
  & ( objdump --section-headers c.exe | fgrep " ." | cut -b5- | cut -d" " -f 1) } \
  | sort | uniq | while read SECTION; do
    echo "##############################################################"
    echo "### $SECTION "
    echo "##############################################################"
    echo ""
    echo "================================ $1 == $SECTION ==="
    objdump -d -M intel --section=${SECTION} "$1"
    echo "================================ $2 == $SECTION ==="
    objdump -d -M intel --section=${SECTION} "$2"
  done


