#!/bin/bash

# 不断往上递归，看哪个目录有 Makefile 可以 make

DIR=`readlink -f "$0"` && DIR=`dirname "$DIR"` && cd "$DIR" || exit 1
SCRIPT_DIR="$DIR"

DIR=`pwd`
DIR="${1:-$DIR}"

FILE_LOG="${SCRIPT_DIR}/make-log.txt"
FILE_OUTPUT="${SCRIPT_DIR}/make-output.txt"

echo >> "$FILE_LOG"
echo start $DIR >> "$FILE_LOG"

FOUND=''

EXIT_CODE='0'

while [ "$DIR" != '/' ]
do

	FILE="${DIR}/Makefile"

	if [ -e "$FILE" ]; then

		FOUND='true'

		cd "$DIR"
		/usr/bin/make > "$FILE_OUTPUT" 2>&1
		EXIT_CODE="$?"

		break
	fi

	DIR=`dirname "$DIR"`
done

if [ -z "$FOUND" ]; then
	echo Makefile not found > "$FILE_OUTPUT"
	EXIT_CODE="1"
fi

echo exit code $EXIT_CODE in $SECONDS sec >> "$FILE_LOG"
if [ "$EXIT_CODE" -gt 0 ]; then
	>&2 echo $FILE_OUTPUT
	exit "$EXIT_CODE"
else
	echo $DIR in $SECONDS sec
fi
