#!/bin/bash
# Command found @ https://stackoverflow.com/questions/14704274/
pdfinfo "$1" | grep Pages | awk '{print $2}'
