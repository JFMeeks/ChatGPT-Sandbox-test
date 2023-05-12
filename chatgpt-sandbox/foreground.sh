#!/bin/bash

# Install the package
pip install shell-gpt --user

# Add the installation directory to the PATH in the current session and in future sessions
directory="/root/.local/bin"
export PATH="$PATH:$directory"
echo "export PATH=\"\$PATH:$directory\"" >> ~/.bashrc

# Clear the terminal
clear

# Run the installed script (optional)
sgpt --help

