#!/bin/sh

WORD='script'
ENDING='ed'

echo '$WORD'
echo "$WORD"
echo "This is a $WORD"
echo "This is a ${WORD}"
echo "${WORD}ing is fun"
echo "$WORDing is fun" #error
echo "${WORD}${ENDING}"
