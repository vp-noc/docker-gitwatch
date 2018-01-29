#!/bin/bash

if [ -n "${SSH_PRIVATE_KEY}" ]
then
    echo "${SSH_PRIVATE_KEY}" > ~/.ssh/id_rsa
    chmod 400 ~/.ssh/id_rsa
fi

if [ -n "${EMAIL}" ]
then
    git config --global user.email "${EMAIL}"
fi
if [ -n "${NAME}" ]
then
    git config --global user.name "${NAME}"
fi

if [ "${1:0:1}" = '-' ]
then
    set -- gitwatch "$@"
fi

exec "$@"
# EOF
