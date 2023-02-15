#!/bin/bash

# Run all files in this folder to greet mom for her birthday
run() {
    echo -ne "${1::6}:\t"
    $@
}

run  bash    shell.sh
run  lua     lua.lua
run  python3 python.py
run  node    javascript.js
run  php     php.php
run  java    java.java
run  gcc     c.c -o c && ./c
run  g++     cpp.cpp -o cpp && ./cpp
run  rustc   rust.rs -o rust && ./rust
run  ghc     haskell.hs -o haskell -v0 && ./haskell
run  nasm    assembly.asm -f elf64 -o assembly.o && gcc assembly.o -o assembly && ./assembly
run  make

sleep 1
echo
make clean
