#!/usr/bin/env bash
set -euo pipefail

BACKUP_DIR="/opt/devops-lab/backups/zabbix-postgres"
CONTAINER_NAME="zabbix-postgres"
DB_NAME="${POSTGRES_DB:-zabbix}"
DB_USER="${POSTGRES_USER:-zabbix}"
DATE="$(date +%Y-%m-%d_%H-%M-%S)"
BACKUP_FILE="${BACKUP_DIR}/zabbix_${DATE}.sql.gz"
RETENTION_DAYS=7

mkdir -p "${BACKUP_DIR}"

docker exec "${CONTAINER_NAME}" pg_dump -U "${DB_USER}" "${DB_NAME}" | gzip > "${BACKUP_FILE}"

find "${BACKUP_DIR}" -type f -name "*.sql.gz" -mtime +"${RETENTION_DAYS}" -delete

echo "Backup created: ${BACKUP_FILE}"