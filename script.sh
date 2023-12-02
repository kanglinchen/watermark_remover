#!/bin/bash

# Create a Python virtual environment
python3 -m venv env4watermark

# Activate the virtual environment
source env4watermark/bin/activate

# Install the requirements
pip install -r requirements.txt

# Download the pretrained model
wget -P pretrained_models https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth

# Run the Python main file
python watermark_remove.py

# Deactivate the virtual environment
deactivate
