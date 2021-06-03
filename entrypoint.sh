#!/bin/sh
set -eax

interrogate --version
interrogate --fail-under $2 --generate-badge $3 $1 -vv > badges/table.txt
sed '$d' badges/table.txt
exit 0
