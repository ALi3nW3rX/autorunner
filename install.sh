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

# Check if .env exists, if not, create it from template
if [ ! -f ".env" ]; then
    echo "Creating .env file from template..."
    cp .env.template .env
    echo ".env file created. Please update your credentials in the .env file."
else
    echo ".env file already exists. Skipping creation..."
fi

# ASCII Box for Instructions
echo "==========================================="
echo "               INSTRUCTIONS                "
echo "==========================================="
echo "1. cd autorunner"
echo "2. nano .env # Update your credentials"
echo "3. source venv/bin/activate && python autorunner.py"
echo "==========================================="
