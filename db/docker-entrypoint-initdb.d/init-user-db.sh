#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER labapi WITH PASSWORD 'labapi';
    CREATE DATABASE labapi OWNER labapi;
    GRANT ALL PRIVILEGES ON DATABASE labapi TO labapi;

    CREATE USER labagent WITH PASSWORD 'labagent';

    CREATE USER labproxy WITH PASSWORD 'labproxy';
    CREATE DATABASE labproxy OWNER labproxy;
    GRANT ALL PRIVILEGES ON DATABASE labproxy TO labproxy;

    CREATE USER govapi WITH PASSWORD 'govapi';
    CREATE DATABASE govapi OWNER govapi;
    GRANT ALL PRIVILEGES ON DATABASE govapi TO govapi;

    CREATE USER govagent WITH PASSWORD 'govagent';

    CREATE USER govproxy WITH PASSWORD 'govproxy';
    CREATE DATABASE govproxy OWNER govproxy;
    GRANT ALL PRIVILEGES ON DATABASE govproxy TO govproxy;

    CREATE USER verapi WITH PASSWORD 'verapi';
    CREATE DATABASE verapi OWNER verapi;
    GRANT ALL PRIVILEGES ON DATABASE verapi TO verapi;

    CREATE USER veragent WITH PASSWORD 'veragent';

    CREATE USER verproxy WITH PASSWORD 'verproxy';
    CREATE DATABASE verproxy OWNER verproxy;
    GRANT ALL PRIVILEGES ON DATABASE verproxy TO verproxy;


EOSQL
