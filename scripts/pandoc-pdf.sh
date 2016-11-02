#!/bin/bash
PATH=$PATH:/usr/texbin:/usr/local/bin

pandoc -o ~/git/slip/slip.pdf ~/git/slip/slip.md  --latex-engine=pdflatex -V geometry:margin=1in 

