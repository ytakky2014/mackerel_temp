#!/bin/bash

FILE=/sys/bus/w1/devices/28-0000086d7f7a/w1_slave
TEMP=`cat ${FILE} | grep t= | cut -d ' ' -f 10 | cut -d '=' -f 2`
TEMPERATURE=`expr ${TEMP} / 1000`

NAME='room.temperature'

SECONDS=`date '+%s'`
echo "${NAME}\t${TEMP}\t${SECONDS}"
