#!/bin/bash

set -eux

python -m pip install . --no-deps --ignore-installed -vv

# https://www.cprogramming.com/tutorial/shared-libraries-linux-gcc.html
make
mv rebind.so $PREFIX/lib/rebind$SHLIB_EXT
