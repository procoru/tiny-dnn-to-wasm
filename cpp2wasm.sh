#!/bin/bash

cfile=$1
wastfile=${cfile%.*}.wast
wasmfile=${cfile%.*}.wasm

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

scripts/compile.sh $1 "-O3 -std=c++1z -I/usr/share/emscripten/system/lib/libcxxabi/include" $DIR

$WABT_ROOT/wast2wasm $wastfile -o $wasmfile
