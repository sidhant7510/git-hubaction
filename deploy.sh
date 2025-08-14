#!/bin/bash
cd /home/ubuntu/git-hubaction

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Kill any running instance of this app
pkill -f "python app.py" || true

# Start Flask on specified port
nohup python app.py --host=0.0.0.0 --port=5000 &

