#!/bin/bash

# Function to add the relative path as a comment to the beginning of a file
add_relative_path() {
    local file="$1"
    # Remove the leading './' from the relative path
    local relative_path="${file#./}"
    # Add the comment symbol before the relative path
    local comment="# $relative_path"
    # Insert the commented relative path as the first line of the file
    # Using a temporary file to handle the insertion
    tmpfile=$(mktemp)
    echo "$comment" > "$tmpfile"
    cat "$file" >> "$tmpfile"
    mv "$tmpfile" "$file"
}

# Export the function to use it with find
export -f add_relative_path

# Find all .py files and process them starting from the current directory (.)
find . -type f -name "*.py" -exec bash -c 'add_relative_path "$0"' {} \;
