#!/bin/bash
cd /home/ubuntu/git-hubaction
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pkill -f gunicorn || true
nohup gunicorn -w 4 -b 0.0.0.0:5000 app:app &

