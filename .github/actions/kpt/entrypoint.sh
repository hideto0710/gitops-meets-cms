#!/bin/sh

mkdir "${2}"
kpt fn source "${1}" |
kpt fn run --image hideto0710/expand-simplejob-cr:dev |
kpt fn sink "${2}"
cat "${2}/*.yaml"