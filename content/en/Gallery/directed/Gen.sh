#!/bin/sh
for i in *.gv.txt
do
	j=${i%.gv.txt}
	# can't use neato -s -n2 because it does strange things to 
	# the records in datastruct.gv
	if [[ $i -nt $j.png || $i -nt $j.svg ]]; then
		dot -Tpng -Gsize="7,7" $i -o $j.png
		dot -Tsvg $i -o $j.svg
		ls -l $j.png $j.svg
	fi
done
