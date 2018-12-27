#!/usr/bin/env bash

##################################################
export DEBIAN_FRONTEND=noninteractive
apt-get install rsync curl zip tar wget       --yes   # needed
apt-get install mc nano e3                    --yes   # comfort zone
apt-get install tmux                          --yes   # needed
apt-get install htop                          --yes   # usefull
apt-get install multitail                     --yes   # usefull
apt-get install netcat-openbsd net-tools nmap --yes   # usefull

## ##################################################
# 
export DEBIAN_FRONTEND=noninteractive
apt-get install iputils-ping                  --yes   # usefull   
#apt-get install iproute2		                  --yes   # usefull   ss
#apt-get install bind9-host                    --yes   # usefull host
#apt-get install dnsutils		                  --yes   # usefull  dig

#apt-get install subversion rlwrap             --yes   # see examples
#apt-get install emacs-nox                     --yes   # my spleen
