#!/bin/bash

if ! docker compose down; then
	echo "ERR!"
	exit 255
fi

if ! docker volume rm postgresql_dlh-pgsql-store;then
	echo "ERR!"
	exit 254
fi

if ! rm -f conf/nginx.conf;then
	echo "ERR!"
	exit 253
fi

if ! sudo rm -rf certs; then
	echo "ERR!"
	exit 252
fi

