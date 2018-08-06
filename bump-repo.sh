#!/bin/bash

printf '!' >> README.md
num=$(fgrep -o '!' README.md | wc -l)
git add README.md
git commit -m "Bump #${num}"
