#!/bin/sh

for folder in */ ; do
	for file in ./$folder*.svg
	do
		if [ ! -f "./$folder`basename $file .svg`.png" ]; then
			/usr/bin/inkscape -z -f "${file}" -w 640 -e "./$folder`basename $file .svg`.png"
		fi
		if [ ! -f "./$folder`basename $file .svg`.eps" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.eps"
		fi
		if [ ! -f "./$folder`basename $file .svg`.pdf" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.pdf"
		fi
	done
done

for folder in ./*/*/ ; do
	for file in ./$folder*.svg
	do
		if [ ! -f "./$folder`basename $file .svg`.ong" ]; then
			/usr/bin/inkscape -z -f "${file}" -w 640 -e "./$folder`basename $file .svg`.png"
		fi
		if [ ! -f "./$folder`basename $file .svg`.eps" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.eps"
		fi
		if [ ! -f "./$folder`basename $file .svg`.pdf" ]; then
			/usr/bin/inkscape -f "${file}" -E "./$folder`basename $file .svg`.pdf"
		fi
	done
done
