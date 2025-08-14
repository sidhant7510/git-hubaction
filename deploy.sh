#!/bin/bash
cd /home/ubuntu/git-hubaction

# Ensure venv package is installed
if ! dpkg -s python3.12-venv >/dev/null 2>&1; then
    sudo apt update
    sudo apt install python3.12-venv -y
fi

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Kill any running instance of this app
pkill -f "python app.py" || true

# Start Flask on specified port, log output
nohup ./venv/bin/python app.py --host=0.0.0.0 --port=5000 > app.log 2>&1 &

