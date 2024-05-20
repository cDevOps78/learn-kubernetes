FROM mysql:8.0-debian

COPY backend.sql /docker-entrypoint-initdb.d/backend.sql

# Provide MYSQL_ROOT_PASSWORD  at run time.