#!/bin/bash

if ! cd MinIO;then
	echo "ERR"
	exit 255
fi

if ! ./init.sh;then
	echo "ERR"
	exit 254
fi

if ! cd ../PostgreSQL;then
	echo "ERR"
	exit 255
fi

if ! ./init.sh;then
	echo "ERR"
	exit 254
fi
