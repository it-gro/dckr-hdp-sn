#!/bin/sh

# for i in hadoop namenode datanode resourcemanager nodemanager historyserver spark; do
for i in hdp-base-os hdp-hadoop ; do
    echo Building $i
    ( cd $i && ./build.sh)
done
