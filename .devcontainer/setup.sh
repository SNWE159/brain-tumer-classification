#!/bin/bash

echo "Setting up Brain Tumor Classification Environment..."

# Create necessary directories
mkdir -p /workspace/models
mkdir -p /workspace/outputs/plots
mkdir -p /workspace/outputs/checkpoints

# Check dataset structure
echo "Checking dataset structure..."
if [ -d "/workspace/data/Training" ]; then
    echo "✓ Training data found"
    echo "Classes found:"
    ls /workspace/data/Training/
else
    echo "✗ Training data not found in expected location"
fi

if [ -d "/workspace/data/Testing" ]; then
    echo "✓ Testing data found"
    echo "Classes found:"
    ls /workspace/data/Testing/
else
    echo "✗ Testing data not found in expected location"
fi

# Initialize git if not exists
if [ ! -d "/workspace/.git" ]; then
    git init
fi

echo "Setup completed successfully!"
echo "You can start Jupyter Lab with: jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root"