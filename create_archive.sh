#!/bin/bash

if [ -z "${1}" ] || [ -z "${2}" ]; then
	echo "usage: ${0} TARGET PROFILE" 1>&2
	exit 1
fi

BIN_PATH="${1}-src/bin/${1}"
GARGOYLE_VERSION=`head -n1 Makefile | cut -d'=' -f2 | sed 's/[^0-9^A-Z^a-z^\.^\-^_].*$//g'`
RESULT_FILE="gargoyle-${GARGOYLE_VERSION}_${1}.${2}.7z"
echo "Creating ${RESULT_FILE}..."
7z a -- "${RESULT_FILE}" `cat "targets/${1}/profiles/${2}/profile_images" | sed "s|^|${BIN_PATH}/*|" | sed "s|$|*|"`
