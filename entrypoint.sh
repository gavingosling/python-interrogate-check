#!/bin/sh
set -eax

interrogate --version

if interrogate --fail-under $2 --generate-badge $3 $1 | grep -q 'PASSED'; then
    interrogate --fail-under $2 --generate-badge $3 $1 -vv > table.txt
    exit 0
else 
    interrogate --fail-under $2 --generate-badge $3 $1 -vv > table.txt
    exit 1
fi
