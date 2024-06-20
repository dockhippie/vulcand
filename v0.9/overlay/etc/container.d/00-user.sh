#!/usr/bin/env bash

if [[ ! "$(id -g vulcand)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} vulcand
fi

if [[ ! "$(id -u vulcand)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} vulcand
fi

true
