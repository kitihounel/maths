#!/bin/bash
# Conversion method found @ https://tex.stackexchange.com/questions/23727
convert -verbose -delay 1000 -loop 0 -density 300 "$1" "$2"
