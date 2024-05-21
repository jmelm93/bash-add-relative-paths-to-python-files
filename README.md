# Add Relative Path Comment to Python Files

This repository contains a bash script that adds the relative path of each Python file as the first line in the file. The relative path is commented out and the original content of the file is moved down by one line.

## Usage

1. Clone the repository or download the script.
2. Navigate to the directory where you want to run the script.
3. Make the script executable.
4. Run the script.

## Script Details

The script add_relative_path.sh performs the following actions:

1. Finds all .py files in the current directory and its subdirectories.
2. Adds the relative path of each file as the first line, commented out.
3. Moves the original content of the file down by one line.

## Example

If the script is executed in the directory /home/user/project and there is a file src/module/example.py, the first line of example.py will be # src/module/example.py.
