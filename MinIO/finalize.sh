#!/bin/bash

if ! docker compose down;then
	echo "ERR!"
	exit 255
fi

if ! docker volume rm minio_dlh-minio-volume;then
	echo "ERR!"
	exit 254
fi

if ! rm -f conf/nginx.conf;then
	echo "ERR!"
	exit 253
fi
