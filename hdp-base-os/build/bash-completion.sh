#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive
apt-get install bash-completion --yes   # comfort zone

sed -i.bak.$(date +%Y%m%d_%H%M%S)  's/^#\( enable bash completion\)/##\1/;' /etc/bash.bashrc
sed -i.bak.$(date +%Y%m%d_%H%M%S) '/^## enable bash completion/,/^fi/ {s/^#//};' /etc/bash.bashrc

# undo:
# sed -i.bak.$(date +%Y%m%d_%H%M%S) '/^# enable bash completion/,/^fi/ {s/^#//};' /etc/bash.bashrc
