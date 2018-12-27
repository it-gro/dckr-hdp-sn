#!/bin/sh

cd $(dirname $0)

HADOOP_VERSION=2.9.2

test -d downloads || mkdir downloads
cd downloads
test -f hadoop-$HADOOP_VERSION.tar.gz || cp /opt/bd/_hadoop/downloads/hadoop-$HADOOP_VERSION.tar.gz . || wget https://www-eu.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz
cd ..

docker build -t grossnik/hdp-hadoop .
