#!/usr/bin/env bash

THIS="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

for FILE in `find . -type f -depth 1 | grep -v $THIS`
do
	cp $FILE ~
done
