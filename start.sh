#!/bin/bash

# Lookup nameserver for dynamic proxy backend lookup
export NAMESERVER=`cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' '`

confd -onetime -backend env
exec nginx -g "daemon off;"