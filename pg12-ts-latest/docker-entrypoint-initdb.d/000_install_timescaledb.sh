#!/bin/bash
create_sql=`mktemp`

# sync script variables with bitnami ones

if [ -z "${REPMGR_USER:-}" ]; then
	REPMGR_USER=${REPMGR_USERNAME}
fi

if [ -z "${POSTGRES_DB:-}" ]; then
	POSTGRES_DB=${POSTGRESQL_DATABASE}
fi

if [ -z "${PGDATA:-}" ]; then
	PGDATA=${POSTGRESQL_DATA_DIR}
fi

if [ -z "${POSTGRESQL_CONF_DIR:-}" ]; then
	POSTGRESQL_CONF_DIR=${PGDATA}
fi


cat <<EOF >${create_sql}
CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;
EOF

TS_TELEMETRY='basic'
if [ "${TIMESCALEDB_TELEMETRY:-}" == "off" ]; then
	TS_TELEMETRY='off'

	# We delete the job as well to ensure that we do not spam the
	# log with other messages related to the Telemetry job.
	cat <<EOF >>${create_sql}
SELECT alter_job(1,scheduled:=false);
EOF
fi

echo "timescaledb.telemetry_level=${TS_TELEMETRY}" >> ${POSTGRESQL_CONF_DIR}/postgresql.conf


# create extension timescaledb in initial databases
PGPASSWORD=${REPMGR_PASSWORD} psql -U ${REPMGR_USER}  postgres -f ${create_sql}
PGPASSWORD=${REPMGR_PASSWORD} psql -U ${REPMGR_USER} template1 -f ${create_sql}

if [ "${POSTGRES_DB:-postgres}" != 'postgres' ]; then
    PGPASSWORD=$REPMGR_PASSWORD psql -U ${REPMGR_USER} "${POSTGRES_DB}" -f ${create_sql}
fi
