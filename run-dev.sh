#!/bin/bash

# Build the image
docker build -t latex-resume-builder -f Dockerfile.local .

# Run container with interactive terminal and volume mounting
docker run -it --rm -v "$(pwd):/home/devuser/workspace" latex-resume-builder