#!/bin/bash

# Set the repository URL
REPO_URL="https://github.com/Vahid-Kouh-Jani-Gouji/Ansible-Apache-Nginx.git"

# Set the local directory
LOCAL_DIR="/path/to/local/directory"

# Set the playbook file name
PLAYBOOK_FILE="playbook.yaml"

# Set the log file name
LOG_FILE="log.txt"

# Check if the local copy of the repository exists
if [ -d "$LOCAL_DIR" ]; then
    echo "Local copy of the repository exists. Updating..."
    cd "$LOCAL_DIR"
    git pull
else
    echo "Local copy of the repository does not exist. Cloning..."
    git clone "$REPO_URL" "$LOCAL_DIR"
    cd "$LOCAL_DIR"
fi

# Run the playbook and write logs to a file
ansible-playbook "$PLAYBOOK_FILE" | tee "$LOG_FILE"
