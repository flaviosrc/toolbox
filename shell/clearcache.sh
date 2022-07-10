#!/bin/bash

# Clear ram-cache and swap memory

echo 3 > /proc/sys/vm/drop_caches
echo 'Ram-cache and Swap Cleared'

# Options summary to drop_cache
# echo 1 : Clear PageCache only *Recomended for production*
# echo 2 : Clear dentries and inodes
# echo 3 : Clear pagecache, dentries, and inodes

# Reference https://www.tecmint.com/clear-ram-memory-cache-buffer-and-swap-space-on-linux/

# Write the above line in etc/crontab to schedle execution every 15 minutes 
# */15 *  * * *  /path/to/clearcache.sh
