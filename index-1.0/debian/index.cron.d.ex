#
# Regular cron jobs for the index package
#
0 4	* * *	root	[ -x /usr/bin/index_maintenance ] && /usr/bin/index_maintenance
