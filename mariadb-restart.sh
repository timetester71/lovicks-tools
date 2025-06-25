#!/bin/bash
STATUSMYSQL="$(systemctl is-active mariadb)"

if [ "${STATUSMYSQL}" != "active" ]; then
    logger "MARKs MONITOR: MariaDB Dead - Attempting Restart"
    sudo service mariadb restart
fi

exit 1
