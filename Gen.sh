#!/bin/sh

for g in ./content/en/Gallery/*/Gen.sh; do
	(cd $(dirname $g); ./Gen.sh)
done
