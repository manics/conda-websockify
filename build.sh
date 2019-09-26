#!/bin/bash

set -eux

python -m pip install . --no-deps --ignore-installed -vv

# https://www.cprogramming.com/tutorial/shared-libraries-linux-gcc.html
"$CC" -c -Wall -Werror -Wno-unused-variable -fpic rebind.c
"$CC" -shared -o $PREFIX/lib/rebind$SHLIB_EXT rebind.o
