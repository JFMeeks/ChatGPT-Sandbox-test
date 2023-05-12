#!/bin/bash
​
# Function to add a directory to the PATH if it's not already there
add_to_path() {
    local directory="$1"
​
    if [[ ":$PATH:" != *":$directory:"* ]]; then
        PATH="$PATH:$directory"
    fi
}
​
# Install the package
pip install shell-gpt --user
​
# Add the installation directory to the PATH in the current session and in future sessions
directory="/root/.local/bin"
add_to_path "$directory"
echo 'export PATH="$PATH:'"$directory"'"' >> ~/.bashrc
​
# Clear the terminal
clear
​
# Run the installed script (optional)
"$directory/sgpt" --help
Collapse
