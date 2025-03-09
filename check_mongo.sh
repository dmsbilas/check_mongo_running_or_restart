#!/bin/bash

# Check if MongoDB service is active
if systemctl is-active --quiet mongod; then
    echo "MongoDB is running."
else
    echo "MongoDB is not running. Restarting MongoDB..."
    
    # Restart MongoDB service
    sudo systemctl restart mongod

    # Verify if MongoDB restarted successfully
    if systemctl is-active --quiet mongod; then
        echo "MongoDB restarted successfully."
    else
        echo "MongoDB failed to restart. Check logs for issues."
    fi
fi
