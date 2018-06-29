#!/bin/bash

sed '/^#/d' quotas.txt | sort > quotas.sorted # delete comment lines, sort lines
sed '/^#/d' sales.txt | sort > sales.sorted

# combine on first key
join quotas.sorted sales.sorted

# remove temp files
rm quotas.sorted sales.sorted
