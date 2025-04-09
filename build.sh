#!/usr/bin/env bash

# Install system dependencies for PyAudio and MySQL client
apt-get update && apt-get install -y \
  portaudio19-dev \
  libasound-dev \
  libmysqlclient-dev \
  build-essential \
  gcc

# Upgrade pip and install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt
