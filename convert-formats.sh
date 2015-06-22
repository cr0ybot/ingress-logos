#!/bin/sh

for folder in */ ; do
	for file in ./$folder*.svg
	do
		if [ ! -f "./$folder`basename $file .svg`.png" ]; then
			/usr/bin/inkscape -z -f "${file}" -w 640 -e "./$folder`basename $file .svg`.png"
		fi
		if [ ! -f "./$folder`basename $file .svg`.png" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.eps"
		fi
	done
done

for folder in ./*/*/ ; do
	for file in ./$folder*.svg
	do
		if [ ! -f "./$folder`basename $file .svg`.png" ]; then
			/usr/bin/inkscape -z -f "${file}" -w 640 -e "./$folder`basename $file .svg`.png"
		fi
		if [ ! -f "./$folder`basename $file .svg`.png" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.eps"
		fi
	done
done
