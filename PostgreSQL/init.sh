#!/bin/bash

if ! . .env; then
	echo "ERR!"
	exit 255
fi

rm -f conf/nginx.conf

if ! sudo rm -rf ./certs; then
	echo "ERR!"
	exit 254
fi

sed "s/__DOMAIN_NAME__/${DOMAIN_NAME}/g" conf/nginx.conf.org > conf/nginx.conf

if  ! sudo cp -r ../certs/ ./ ;then
	echo "ERR!"
	exit 253;
fi

if  ! sudo chown -R 999:999 ./certs ; then
	echo "ERR!"
	exit 252;
fi

if ! COMPOSE_BAKE=true docker compose up -d --build;then
	echo "ERR!"
	exit 251
fi

exit 0;
