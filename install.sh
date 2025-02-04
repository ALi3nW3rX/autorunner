#!/bin/bash

# Check if the directory already exists
if [ -d "autorunner" ]; then
    echo "Directory 'autorunner' already exists. Skipping cloning..."
else
    echo "Cloning the repository..."
    git clone https://github.com/ali3nw3rx/autorunner.git
fi

cd autorunner

# Set up the virtual environment
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
else
    echo "Virtual environment already exists. Skipping creation..."
fi

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

echo "Setup complete! Run the script with: source venv/bin/activate && python autorunner.py"
