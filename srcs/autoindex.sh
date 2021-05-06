#!/bin/bash

FILE="/etc/nginx/sites-available/default"

if [ $1 = "on" ]; then
	sed -i "s/autoindex off/autoindex on/g" $FILE
	service nginx reload
elif [ $1 = "off" ]; then
	sed -i "s/autoindex on/autoindex off/g" $FILE
	service nginx reload
else
	echo "use on/off parameter"
fi

service nginx reload