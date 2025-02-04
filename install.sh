#!/bin/bash
if [ -d "autorunner" ]; then
    echo "Directory 'autorunner' already exists. Skipping cloning..."
else
    echo "Cloning the repository..."
    git clone https://github.com/ali3nw3rx/autorunner.git
fi

cd autorunner

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
else
    echo "Virtual environment already exists. Skipping creation..."
fi

source venv/bin/activate

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Setup complete! Run the script with:"


echo "*******************************************"
echo "*                                         *"
echo "*             INSTRUCTIONS                *"
echo "*                                         *"
echo "*******************************************"
echo "1. cd autorunner"
echo "2. nano .env # Add your credentials"
echo "3. source venv/bin/activate && python autorunner.py"
echo "*******************************************"

