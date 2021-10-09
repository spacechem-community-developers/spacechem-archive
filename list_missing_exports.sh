#!/bin/bash

for f in $(for s in */*/scores.txt; do
              < "$s" tr '/' '-' | sed -e "s@^@$(dirname $s)/@g" -e 's@$@.txt@'
           done); do
    if [[ ! -f $f ]]; then
        echo "$f"
    fi
done