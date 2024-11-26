#!/bin/bash

cats=("hello_world" "jumps_calls_comparisons" "input" "math_stack" "subroutine_print_strings" "macros" "subroutine_print_integers" "cli_args" "file_perms" "files_writes" "files_reads" "nanosleep")

for i in ${!cats[@]}; do
    dir="$((i+1))-${cats[$i]}"
    base="learn-$((i+1))"

    nasm -f elf64 -o "$dir/$base.o" "$dir/$base.s"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to compile $dir/$base.s"
        exit 1
    fi

    ld "$dir/$base.o" -o "$dir/$base"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to link $dir/$base.o"
        exit 1
    fi

    "./$dir/$base"
    if [ $? -ne 0 ]; then
        echo "Error: Failed to execute $dir/$base"
        exit 1
    fi
done
