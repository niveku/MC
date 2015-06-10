#!/bin/bash
echo "================================================"
sed -n '/\.\/decipher\.sh \./,$p' HW2.txt | sed '1D'| sed 's/Page [0-9]*//g' | tr -d '\n' > bigenigna.txt

