#!/bin/bash

source ./helpers.sh

print_info() {
    DIR=$1

    echo "Total number of folders (including all nested ones) = $(count_folders "$DIR")"

    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
    top_folders "$DIR"

    echo "Total number of files = $(count_files "$DIR")"

    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $(count_by_exten "$DIR" "conf")"
    echo "Text files = $(count_text "$DIR")"
    echo "Executable files = $(count_exec "$DIR")"
    echo "Log files (with the extension .log) = $(count_by_exten "$DIR" "log")"
    echo "Archive files = $(count_archives "$DIR")"
    echo "Symbolic links = $(count_links "$DIR")"

    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    top_files "$DIR"

    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
    top_exec "$DIR"
}