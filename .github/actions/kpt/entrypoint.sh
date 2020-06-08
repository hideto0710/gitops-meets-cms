#!/bin/sh

set -eu

mkdir "${2}"

kpt fn source "${1}" |
kpt fn run --image hideto0710/expand-simplejob-cr:dev |
kpt fn sink "${2}"
