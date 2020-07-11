#! /bin/sh

#Disable reverse path filter
search_dir=/proc/sys/net/ipv4/conf/
for entry in `ls $search_dir`; do
    echo 0 > $search_dir$entry/rp_filter
    cat $search_dir$entry/rp_filter
done
