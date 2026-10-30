#!/bin/sh
# Usage: scripts/bump.sh 26.10.31.002   – sets the version in sw.js and index.html
v="$1"; [ -z "$v" ] && { echo "usage: $0 YY.MM.DD.XXX"; exit 1; }
sed -i.bak "s/const VER='[0-9.]*'/const VER='$v'/" sw.js index.html && rm -f sw.js.bak index.html.bak
grep -n "const VER=" sw.js index.html
