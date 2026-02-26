#!/bin/bash

# Script for Manual Deployment
echo "Starting Deployment..."

git pull origin main || {
    echo "Failed to pull latest changes. Deployment aborted."
    exit 1
}

echo "Latest changes pulled successfully."

# Add your deploy commands below
# Example: Restart server
# sudo systemctl restart my-service

echo "Deployment steps completed successfully."