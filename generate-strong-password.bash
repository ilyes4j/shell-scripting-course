#!/bin/bash

echo ${RANDOM}

echo ${RANDOM}${RANDOM}${RANDOM}

date +%s%N

STRONG_PASS=$(date +%s%N | sha256sum | cut -d ' ' -f 1 | head -c 16)

RANDOM_SPECIAL_CHAR=$(echo '(&#[-|_\^@])=}{' | fold -w1 | shuf | head -c1)

echo "${STRONG_PASS}${RANDOM_SPECIAL_CHAR}"
