#!/bin/bash

if [ -z "${1}" ] || [ -z "${2}" ]; then
	echo "usage: ${0} TARGET PROFILE" 1>&2
	exit 1
fi

ORIGIN_PATH=`pwd`
BIN_PATH="${1}-src/bin/${1}"
GARGOYLE_VERSION=`git log -1 HEAD~1 --pretty=format:%h`
RESULT_FILE="gargoyle_m45t3r-${GARGOYLE_VERSION}_${1}.7z"
echo "Creating ${RESULT_FILE}..."
pushd "${BIN_PATH}"
7z a -t7z -- "${RESULT_FILE}" `cat "${ORIGIN_PATH}/targets/${1}/profiles/${2}/profile_images" | sed "s|^|*|" | sed "s|$|*|"` "${ORIGIN_PATH}/built/${1}"
mv "${RESULT_FILE}" "${ORIGIN_PATH}"
popd
