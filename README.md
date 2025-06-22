# DataLakeHouse-storage
DataLakeHouse Storage system

# How to 

1. prepare for certs into ./certs directory.
  - *hostname(FQDN)*.ca.crt -> CA root certificate.
  - *hostname(FQDN)*.crt -> selfsigned certificate.
  - *hostname(FQDN)*.key -> selfsigned private key(no password).

2. set environment variable.
  - ./MinIO/.env  
```
TZ="Your country's timezone."
DOMAIN_NAME="Hostname(FQDN)."
MINIO_CONSOLE_NGINX_PORT="Port for your MinIO Web console."
MINIO_CLI_NGINX_PORT="Port for your MinIO CLI."
MINIO_ROOT_USER="Admin name for your MinIO"
MINIO_ROOT_PASSWORD="Admin passwd for your MinIO"
```
  - ./PostgreSQL/.env  
```
TZ="Your country's timezone."
POSTGRES_PORT="Port for your PostgreSQL Server."
DOMAIN_NAME="Hostname(FQDN)."
POSTGRES_USERNAME="Admin name for your PostgreSQL."
POSTGRES_PASSWORD="Admin password for your PostgreSQL."
POSTGRES_DBNAME="Same name for POSTGRES_USERNAME."
ADMINER_NGINX_PORT="Port for Adminer(RDB Web console)."
```

3. Run ./init.sh.

4. (When you want to stop) run ./down.sh.

5. (When you want to restart) run ./up.sh.

6. (When you want to stopo and destroy volumes belonging with MinIO and PostgreSQL) run ./finalize.sh.

7. that's it.
