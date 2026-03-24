count_folders() {
    find "$1" -type d | wc -l | awk '{print $1 - 1}'
}

count_files() {
    find "$1" -type f | wc -l
}

count_by_exten() {
    find "$1" -type f -name "*.$2" | wc -l
}

count_text() {
    find "$1" -type f -exec file {} \; | grep -i text | wc -l
}

count_exec() {
    find "$1" -type f -executable | wc -l
}

count_links() {
    find "$1" -type l | wc -l
}

count_archives() {
    find "$1" -type f \( -name "*.zip" -o -name "*.tar" -o -name "*.gz" -o -name "*.rar" \) | wc -l
}

top_folders() {
    du -h "$1" | sort -hr | head -n 5 | awk '{print NR " - " $2 ", " $1}'
}

top_files() {
    find "$1" -type f -exec du -h {} + | sort -hr | head -n 10 | awk '{
        split($2, a, ".")
        ext=a[length(a)]
        print NR " - " $2 ", " $1 ", " ext
    }'
}

top_exec() {
    find "$1" -type f -executable -exec du -h {} + | sort -hr | head -n 10 | while read size path
    do
        hash=$(md5sum "$path" | awk '{print $1}')
        echo "$path, $size, $hash"
    done | awk '{print NR " - " $0}'
}