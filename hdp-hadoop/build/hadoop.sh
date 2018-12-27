#!/usr/bin/env bash

## ##################################################
#
#set -xe
set -xv

cd /tmp

test -f hadoop-${HADOOP_VERSION}.tar.gz     || wget https://www-eu.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz
test -f hadoop-${HADOOP_VERSION}.tar.gz.asc || wget https://www-eu.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz.asc
#gpg --verify hadoop-${HADOOP_VERSION}.tar.gz.asc

test -d $HDP_ROOT || mkdir -p $HDP_ROOT
tar -xf hadoop-${HADOOP_VERSION}.tar.gz -C $HDP_ROOT/
rm /tmp/hadoop*.gz*
rm -Rf $HADOOP_PREFIX/share/doc/hadoop

# ln -s /opt/hadoop-$HADOOP_HADOOP_VERSION/etc/hadoop /etc/hadoop

cd $HADOOP_PREFIX/etc/hadoop
cp mapred-site.xml.template mapred-site.xml

test -d $HADOOP_PREFIX/logs || mkdir $HADOOP_PREFIX/logs
chown -R $HADOOP_USER:$HADOOP_USER $HADOOP_PREFIX

test -d $HDFS_DATA || mkdir $HDFS_DATA
chown -R $HDFS_USER:$HDFS_USER $HDFS_DATA
