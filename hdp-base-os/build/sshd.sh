#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt-get install openssh-server                    --yes # needed
sed -i.bak.$(date +%Y%m%d_%H%M%S)  's|^AcceptEnv LANG LC|#AcceptEnv LANG LC|g;' /etc/ssh/sshd_config

service ssh restart
