#!/bin/bash

mkdir -p generated-pdfs
pdflatex -output-directory=generated-pdfs -output-format=pdf "$1"
rm -f generated-pdfs/*.aux generated-pdfs/*.log generated-pdfs/*.out