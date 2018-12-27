FROM grossnik/hdp-base-os

ENV MULTIHOMED_NETWORK=1
# alias EVN=export

ENV HADOOP_VERSION=2.9.2
ENV HDP_ROOT=/opt/hdp
ENV HDP_USER_HOMES=$HDP_ROOT/home
ENV HADOOP_PREFIX=$HDP_ROOT/hadoop-$HADOOP_VERSION
ENV HADOOP_CONF_DIR=$HADOOP_PREFIX/etc/hadoop
ENV HADOOP_USER=hadoop
ENV HADOOP_USER_ID=2000
ENV HDFS_USER=hdfs
ENV HDFS_USER_ID=2001
ENV JAVA_HOME=/usr/
ENV HDFS_DATA=/hadoop-data

COPY downloads/hadoop-2.9.2.tar.gz /tmp/
COPY build/* /dckr.build/
RUN cd /dckr.build && chmod u+x *.sh && ./users.sh && ./keys.sh && ./java.sh && ./hadoop.sh && ./clean.sh

#ENV USER=root
ENV PATH $HADOOP_PREFIX/bin/:$PATH
 
COPY entrypoint.sh /
COPY entrypoint.sh /usr/local/bin/
RUN chmod a+x /entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["/bin/bash"]
