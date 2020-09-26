#!/bin/bash

echo -n "State of autoindex? ([32mon[0m / [31moff[0m) : "
read INDEX

while [ 1 ]
do
	if [[ "$INDEX" = "on" ]]; then
	    sed -i "s/.*autoindex.*/\tautoindex off;/" /etc/nginx/sites-available/nginx.conf
	    break
	elif [[ "$INDEX" = "off" ]]; then
	    sed -i "s/.*autoindex.*/\tautoindex on;/" /etc/nginx/sites-available/nginx.conf
	    break
	fi
	echo -n "Wrong state! ([32mon[0m / [31moff[0m) : "
	read INDEX
done

#reload nginx server
nginx -s reload
