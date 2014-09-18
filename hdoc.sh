#!/bin/bash

function hdoc {
    echo "Searching for \"$1*\" documentation in .cabal-sandbox...";
    packages=$(find .cabal-sandbox/share/doc -type d -name "$1*");
    count=$(wc -w <<< "$packages" | tr -d ' ')
    if [[ $count == 1 ]]; then
        name=$(basename $packages);
        echo "Opening $name documentation."
        open "$packages/html/index.html";
    else
        echo "$count results found. Which did you mean?";
        for pkg in $packages; do
            echo $(basename $pkg);
        done;
    fi
}
