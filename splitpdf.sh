#!/bin/bash
DIR=$PWD
FULLPATH=$(realpath "$1")
PREFIX=$(basename "$1")
cd $2
pdftoppm -png "$FULLPATH" "$PREFIX"
cd "$DIR"
