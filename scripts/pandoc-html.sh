#!/bin/bash
PATH=$PATH:/usr/texbin:/usr/local/bin

pandoc -s -o ~/git/slip/slip.html ~/git/slip/slip.md --css=css/tufte.css --css=css/user.css --to=html5