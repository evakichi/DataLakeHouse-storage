#!/bin/bash

if ! cd ./PostgreSQL;then
	echo "ERR"
	exit 255
fi

if ! docker compose down;then
	echo "ERR"
	exit 254
fi

if ! cd ../MinIO;then
	echo "ERR"
	exit 255
fi

if ! docker compose down;then
	echo "ERR"
	exit 254
fi

