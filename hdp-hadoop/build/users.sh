#!/usr/bin/env bash

## ##################################################
#

test -d ${HDP_USER_HOMES} || mkdir -p ${HDP_USER_HOMES}

groupadd -g $HADOOP_USER_ID $HADOOP_USER
useradd  -u $HADOOP_USER_ID -g $HADOOP_USER_ID -s '/bin/bash' -m -d ${HDP_USER_HOMES}/$HADOOP_USER $HADOOP_USER

groupadd -g $HDFS_USER_ID $HDFS_USER
useradd  -u $HDFS_USER_ID -g $HDFS_USER_ID -s '/bin/bash' -m -d ${HDP_USER_HOMES}/$HDFS_USER $HDFS_USER
