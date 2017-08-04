#!/bin/sh
HTML_FILES=`find ~/learning -name "*.html" -print`
echo "$HTML_FILES" | grep "index.html$"
echo "$HTML_FILES" | grep "contents.html$"
