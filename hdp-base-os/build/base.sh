#!/usr/bin/env bash

## ##################################################
#
# remove later
mv /etc/dpkg/dpkg.cfg.d/excludes     /etc/dpkg/dpkg.cfg.d/excludes.disabled
mv /etc/apt/apt.conf.d/docker-clean  /etc/apt/apt.conf.d/docker-clean.disabled

## ##################################################
#
echo 'Acquire::ForceIPv4 true;' | tee /etc/apt/apt.conf.d/99force-ipv4
sed -i.bak.$(date +%Y%m%d_%H%M%S)  's|#precedence ::ffff:0:0/96  100|precedence ::ffff:0:0/96  100|'g /etc/gai.conf

## ##################################################
#
#sed -i.bak.$(date +%Y%m%d_%H%M%S)  's|^\(deb-src \)|#\1|g; s|//archive.ubuntu.com|//ch.archive.ubuntu.com|g;' /etc/apt/sources.list
#sed -i.bak.$(date +%Y%m%d_%H%M%S)  's|^\(deb-src \)|#\1|g; s|//ch.archive.ubuntu.com|//archive.ubuntu.com|g;' /etc/apt/sources.list
#ls -ld  /etc/apt/sources.list*
#apt-get update

## ##################################################
#
apt-get update
# apt-get upgrade              --yes  # not in docker build
apt-get autoremove             --yes

## ##################################################
#
export DEBIAN_FRONTEND=noninteractive
apt-get install apt-utils --no-install-recommends --yes # debconf: delaying package configuration, since apt-utils is not installed
apt-get install software-properties-common        --yes # add-apt-repository (later on java)
apt-get install sudo                              --yes # check (?)
