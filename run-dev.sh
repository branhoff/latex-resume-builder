#!/bin/bash

# Build the image
docker build -t latex-resume-builder -f Dockerfile.local .

# Run as root to avoid permission issues on Windows
MSYS_NO_PATHCONV=1 docker run -it --rm --user root -v "$(pwd):/home/devuser/workspace" latex-resume-builder