#!/bin/bash

link="https://$1:443/Thingworx/Composer/index.html"

NEWlink=`curl -k -s -u $2:$3 $link | grep '<title>' | wc -l`

#if the status check failed and then it reflects on zabbix Status item
if [ $NEWlink -lt 1 ]
then
	echo "0"
else
	echo "1"
fi