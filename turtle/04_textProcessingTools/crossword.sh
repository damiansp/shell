#! /bin/bash
# Match an egrep(1)-like pattern against a collection of word lists.
#
# Usage:
#   crossword egrep-pattern [word-list-files]
#   Example:
#     crossword '^b.....[xz]...$' | fmt

FILES="/usr/share/dict/words"
pattern="$1"
egrep -h -i "$pattern" $FILES 2> /dev/null | sort -u -f
# -h: suppress filename from output; -i: case insensitive
# 2> /dev/null: discard stderror
# sort -u: unique -f: ignore case
