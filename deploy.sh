#!/bin/bash
cd /home/ubuntu/git-hubaction
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py runserver 0.0.0.0:5000

