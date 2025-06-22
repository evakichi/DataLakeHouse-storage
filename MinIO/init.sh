#!/bin/bash

if ! . .env;then
	echo "ERR!"
	exit 255
fi

rm -f conf/nginx.conf

if ! sed "s/__DOMAIN_NAME__/${DOMAIN_NAME}/g" conf/nginx.conf.org > conf/nginx.conf;then
	echo "ERR!"
	exit 255
fi

if ! COMPOSR_BAKE=true docker compose up -d --build;then
	echo "ERR!"
	exit 254
fi

exit 0;
