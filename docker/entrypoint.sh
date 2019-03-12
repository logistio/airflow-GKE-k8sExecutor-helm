#!/usr/bin/env bash

if [ "$1" = "webserver" ]
then
	exec airflow webserver
fi

if [ "$1" = "scheduler" ]
then
	exec airflow scheduler
fi
if [ "$1" = "airflow upgradedb && alembic upgrade heads" ]
then
   cd /usr/local/lib/python3.7/site-packages/airflow/
   airflow upgradedb && alembic upgrade heads
fi

if [ "$1" = "local" ]
then
   cd /usr/local/lib/python3.7/site-packages/airflow/
   airflow upgradedb && alembic upgrade heads
   exec airflow webserver
fi