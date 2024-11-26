#!/bin/bash

cats=("hello_world" "jumps_calls_comparisons" "input" "math_stack" "subroutine_print_strings" "macros" "subroutine_print_integers" "cli_args" "file_perms" "files_writes" "files_reads" "nanosleep")

for i in ${!cats[@]}; do
    mkdir -p "$((i+1))-${cats[$i]}" 
    touch "$((i+1))-${cats[$i]}/learn-$((i+1)).s"
    echo "section .data" > "$((i+1))-${cats[$i]}/learn-$((i+1)).s"
    echo "section .text" >> "$((i+1))-${cats[$i]}/learn-$((i+1)).s"
    echo "    global _start" >> "$((i+1))-${cats[$i]}/learn-$((i+1)).s"
    echo "_start:" >> "$((i+1))-${cats[$i]}/learn-$((i+1)).s"
done
