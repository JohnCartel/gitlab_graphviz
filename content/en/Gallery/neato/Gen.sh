#!/bin/sh

function doGraph {
	i=$1
	j=${i%.gv.txt}
	if [[ $i -nt $j.png || $i -nt $j.svg ]]; then
		neato -Tpng -Gsize="7,7" $i -o $j.png
		neato -Tsvg $i -o $j.svg
		ls -l $j.png $j.svg
	fi
}

if [[ $# > 0 ]]; then
	for i in "$@"; do
		doGraph $1
		shift
	done
else
	for i in *.gv.txt; do
		doGraph $i
	done
fi
