# bitnami-docker-postgresql-timescale-repmgr

*Not tested, try it at your own risk*

This docker image is combination of bitnami-docker-postgresql-repmgr with timescaledb-docker.

Documentation from original repositories aplays to it.

https://github.com/bitnami/containers/tree/main/bitnami/postgresql-repmgr

https://github.com/timescale/timescaledb-docker

List of ### Environment variables specific to postgres and repmgr.

| Environment Variable                   | Default value |
|:---------------------------------------|:--------------|
| REPMGR_NODE_ID                         | `nil`         |
| REPMGR_NODE_ID_START_SEED              | `1000`        |
| REPMGR_NODE_NAME                       | `nil`         |
| REPMGR_NODE_NETWORK_NAME               | `nil`         |
| REPMGR_NODE_PRIORITY                   | `100`         |
| REPMGR_PARTNER_NODES                   | `nil`         |
| REPMGR_PRIMARY_HOST                    | `nil`         |
| REPMGR_NODE_LOCATION                   | `default`     |
| REPMGR_PRIMARY_PORT                    | `5432`        |
| REPMGR_PORT_NUMBER                     | `5432`        |
| REPMGR_LOG_LEVEL                       | `NOTICE`      |
| REPMGR_START_OPTIONS                   | `nil`         |
| REPMGR_CONNECT_TIMEOUT                 | `5`           |
| REPMGR_RECONNECT_ATTEMPTS              | `3`           |
| REPMGR_RECONNECT_INTERVAL              | `5`           |
| REPMGR_USE_REPLICATION_SLOTS           | `1`           |
| REPMGR_MASTER_RESPONSE_TIMEOUT         | `20`          |
| REPMGR_DEGRADED_MONITORING_TIMEOUT     | `5`           |
| REPMGR_USERNAME                        | `repmgr`      |
| REPMGR_DATABASE                        | `repmgr`      |
| REPMGR_PASSWORD                        | `nil`         |
| REPMGR_PASSWORD_FILE                   | `nil`         |
| REPMGR_FENCE_OLD_PRIMARY               | `no`          |
| REPMGR_CHILD_NODES_CHECK_INTERVAL      | `5`           |
| REPMGR_CHILD_NODES_CONNECTED_MIN_COUNT | `1`           |
| REPMGR_CHILD_NODES_DISCONNECT_TIMEOUT  | `30`          |
| REPMGR_USE_PASSFILE                    | `nil`         |
| POSTGRESQL_USERNAME                    | `postgres`    |
| POSTGRESQL_DATABASE                    | `nil`         |
| POSTGRESQL_PASSWORD                    | `nil`         |
| POSTGRESQL_PASSWORD_FILE               | `nil`         |
| POSTGRESQL_POSTGRES_PASSWORD           | `nil`         |
| POSTGRESQL_POSTGRES_PASSWORD_FILE      | `nil`         |
| POSTGRESQL_PORT_NUMBER                 | `5432`        |
| POSTGRESQL_INITDB_ARGS                 | `nil`         |
| POSTGRESQL_PGCTLTIMEOUT                | `60`          |
| POSTGRESQL_SHUTDOWN_MODE               | `fast`        |
| POSTGRESQL_ENABLE_TLS                  | `no`          |
| POSTGRESQL_TLS_CERT_FILE               | `nil`         |
| POSTGRESQL_TLS_KEY_FILE                | `nil`         |
| POSTGRESQL_TLS_CA_FILE                 | `nil`         |
| POSTGRESQL_TLS_CRL_FILE                | `nil`         |
| POSTGRESQL_TLS_PREFER_SERVER_CIPHERS | `yes`         |

List of ### Environment variables specific to timescale

| Environment Variable                   | Default value |
|:---------------------------------------|:--------------|
| TIMESCALEDB_TELEMETRY                  | `basic`       |
| NO_TS_TUNE                             | `no`          |
| TS_TUNE_MEMORY                         | ``            |
| TS_TUNE_NUM_CPUS                       | ``            |
| TS_TUNE_MAX_BG_WORKERS                 | ``            |
| TS_TUNE_MAX_CONNS                      | ``            |
