#!/usr/bin/env bash

# Install required system dependencies for PyAudio and MySQL
apt-get update && apt-get install -y \
  portaudio19-dev \
  libasound-dev \
  libmysqlclient-dev \
  build-essential \
  gcc

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt
