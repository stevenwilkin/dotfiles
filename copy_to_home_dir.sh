#!/usr/bin/env bash

THIS="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

for FILE in `find . -maxdepth 1 -type f | grep -v $THIS`
do
	cp $FILE ~
done
