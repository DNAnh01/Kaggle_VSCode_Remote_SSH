#!/bin/bash

# List of extensions to install
extensions=(
    # Extensions for Python
    "ms-python.python"                # Main extension for Python
    "ms-python.vscode-pylance"        # Python language server
    "ms-python.black-formatter"       # Code formatter for Python
    "ms-python.isort"                 # Sort imports
    "ms-python.debugpy"               # Debug Python
    "kevinrose.vsc-python-indent"     # Support Python indentation
    "rtg.py-snippets"                 # Python snippets

    # Extensions for AI coding
    "github.copilot"                  # AI code suggestions
    "github.copilot-chat"             # Chat interface for Copilot
    "visualstudioexptteam.vscodeintellicode"                # AI-assisted development
    "visualstudioexptteam.vscodeintellicode-completions"    # AI-assisted completions
    "visualstudioexptteam.intellicode-api-usage-examples"   # API usage examples

    # Useful extensions for code management
    "eamodio.gitlens"                 # Git integration
    "ms-vscode-remote.remote-ssh"     # Remote development
    "ms-vscode-remote.remote-containers" # Container development

    # General support extensions
    "streetsidesoftware.code-spell-checker" # Spell checker
    "formulahendry.code-runner"       # Run code quickly
    "gruntfuggly.todo-tree"           # Manage todos
)

# Install each extension
for extension in "${extensions[@]}"
do
    code --install-extension $extension &
done

# Wait for all background jobs (extension installations) to complete
wait

echo "All extensions have been installed."
