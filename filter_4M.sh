#!/bin/bash

mkdir -p files
# Filter firmwares with kernel+SquashFS partition of less than ~3,5M
for i in *sysupgrade.bin; do
	size=`ls -la $i | cut -d" " -f5`;
	filename=`ls $i`;
	if [[ "$size" -lt "3600000" ]]; then
		echo "Moving $prefix* to files"
		prefix=${i%sysupgrade.bin}
		cp "$prefix"* files
	fi
done
echo
# Remove firmwares with factory image bigger than ~4M
pushd files
for i in *factory.bin; do
	size=`ls -la $i | cut -d" " -f5`;
	filename=`ls $i`;
	if [[ "$size" -gt "4000000" ]]; then
		prefix=${i%factory.bin}
		echo "Removing $prefix* because it is too big"
		rm -f "$prefix"*
	fi
done
echo "\nCompressing files"
tar cfvJ "gargoyle-1.8.X_m1.tar.xz" *.bin
popd
