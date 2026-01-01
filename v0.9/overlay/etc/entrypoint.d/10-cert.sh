#!/usr/bin/env bash

if [ -n "${VULCAND_CERTPATH}" ]; then
    if [ ! -f "${VULCAND_CERTPATH}" ];  then
        echo -e "${VULCAND_CERTPATH}" >| /tmp/vulcand.crt
        VULCAND_CERTPATH="/tmp/vulcand.crt"
    fi
fi

if [ -n "${VULCAND_ETCD_CA_FILE}" ]; then
    if [ ! -f "${VULCAND_ETCD_CA_FILE}" ]; then
        echo -e "${VULCAND_ETCD_CA_FILE}" >| /tmp/ca.crt
        VULCAND_ETCD_CA_FILE="/tmp/ca.crt"
    fi

    ETCDCTL_COMMAND="${ETCDCTL_COMMAND} --cacert=${VULCAND_ETCD_CA_FILE}"
fi

if [ -n "${VULCAND_ETCD_CERT_FILE}" ]; then
    if [ ! -f "${VULCAND_ETCD_CERT_FILE}" ]; then
        echo -e "${VULCAND_ETCD_CERT_FILE}" >| /tmp/etcd.crt
        VULCAND_ETCD_CERT_FILE="/tmp/etcd.crt"
    fi

    ETCDCTL_COMMAND="${ETCDCTL_COMMAND} --cert=${VULCAND_ETCD_CERT_FILE}"
fi

if [ -n "${VULCAND_ETCD_KEY_FILE}" ]; then
    if [ ! -f "${VULCAND_ETCD_KEY_FILE}" ]; then
        echo -e "${VULCAND_ETCD_KEY_FILE}" >| /tmp/etcd.key
        VULCAND_ETCD_KEY_FILE="/tmp/etcd.key"
    fi

    ETCDCTL_COMMAND="${ETCDCTL_COMMAND} --key=${VULCAND_ETCD_KEY_FILE}"
fi
