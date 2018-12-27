#!/usr/bin/env bash

## ##################################################
#
add-apt-repository ppa:webupd8team/java  --yes
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true   | debconf-set-selections

export DEBIAN_FRONTEND=noninteractive
apt-get install oracle-java8-installer   --yes
apt-get install oracle-java8-set-default --yes

# jdk-8u191-linux-x64.tar.gz
rm -rf /var/cache/oracle-jdk8-installer
