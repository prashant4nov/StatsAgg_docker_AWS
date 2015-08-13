#!/bin/sh
export JAVA_OPTS="$JAVA_OPTS -Xmx2560m -XX:NewRatio=6 -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:+CMSClassUnloadingEnabled -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.port=20000 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -DsaAppConfLocation="/home/application.properties" -DsaLogbackConfLocation="/home/logback_config.xml" -DsaDbConfLocation="/home/database.properties""