#!/bin/bash
git clone https://github.com/ALi3nW3rX/autorunner.git
cd autorunner
bash install.sh
echo "Setting up the environment..."
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
echo "Setup complete! Run the script with: source venv/bin/activate && python autorunner.py"
