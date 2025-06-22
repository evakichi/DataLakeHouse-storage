#!/bin/bash

if ! cd MinIO;then
	echo "ERR"
	exit 255
fi

if ! ./up.sh;then
	echo "ERR"
	exit 254
fi

if ! cd ../PostgreSQL;then
	echo "ERR"
	exit 255
fi

if ! ./up.sh;then
	echo "ERR"
	exit 254
fi
