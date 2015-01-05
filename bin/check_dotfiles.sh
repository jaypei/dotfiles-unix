#!/bin/bash

F=(
~/.emacs.d/
~/.config/awesome/
~/work/dotfiles-own/
~/work/dotfiles-unix/
~/work/saltstack-formulas-workenv/
)

for i in $F; do
    if cd $i && [ $(git status -s | wc -l) != 0 ]; then
        echo "DIR "$i" is not clean."
    fi
done

echo "done."
