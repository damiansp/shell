#! /bin/sh

# merge-sales.sh
#
# Combine quota and sales data

# Remove comments and sort data files
sed '/^#/d' quotas.txt | sort > quotas.sorted
sed '/^#/d' sales.txt  | sort > sales.sorted

# Combine on first key, sent results to new file
join quotas.sorted sales.sorted > salesData.txt

# remove temp files
rm quotas.sorted sales.sorted
