#!/bin/bash

# Make sure folders exist
mkdir -p /data/config
cd /app

# Start the app
serve -s dist -l 80
