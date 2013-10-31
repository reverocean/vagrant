#!/bin/bash
wget http://mirrors.cnnic.cn/apache/hbase/stable/hbase-0.94.12.tar.gz
tar -zxvf hbase-0.94.12.tar.gz
mv hbase-0.94.12 hbase-home
echo "export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64" >> hbase-home/conf/hbase-env.sh
echo "export HBASE_MANAGES_ZK=false" >> hbase-home/conf/hbase-env.sh
cat > hbase-home/conf/hbase-site.xml <<EOF 
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
    <property>
        <name>hbase.master</name>
        <value>192.168.56.200:60000</value>
    </property>
    <property>
        <name>hbase.rootdir</name>
        <value>hdfs://master:9000/hbase</value>
    </property>
    <property>
        <name>hbase.cluster.distributed</name>
        <value>true</value>
    </property>
    <property>
        <name>hbase.zookeeper.quorum</name>
        <value>zkserver</value>
    </property>
</configuration>
EOF
cat > hbase-home/conf/regionservers <<EOF 
slave1
slave2
slave3
EOF

