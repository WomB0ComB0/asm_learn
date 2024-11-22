cats=("hello_world" "jumps_calls_comparisons" "input" "math_stack" "subroutine_print_strings" "macros" "subroutine_print_integers" "cli_args" "file_perms" "files_writes" "files_reads" "nanosleep")

for i in ${!cats[@]}; do
    touch "learn-$((i+1)).s"
    echo "section .data" > "learn-$((i+1)).s"
    echo "section .text" >> "learn-$((i+1)).s"
    echo "    global _start" >> "learn-$((i+1)).s"
    echo "_start:" >> "learn-$((i+1)).s"
done
