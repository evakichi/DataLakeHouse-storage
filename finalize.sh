#!/bin/bash

if ! cd ./PostgreSQL;then
	echo "ERR"
	exit 255
fi

if ! ./finalize.sh;then
	echo "ERR"
	exit 254
fi

if ! cd ../MinIO;then
	echo "ERR"
	exit 255
fi

if ! ./finalize.sh;then
	echo "ERR"
	exit 254
fi

