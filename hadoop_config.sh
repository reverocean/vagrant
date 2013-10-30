#!/bin/bash
tar -zxvf hadoop-1.2.1.tar.gz
mv hadoop-1.2.1 hadoop-home
echo "export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64" >> hadoop-home/conf/hadoop-env.sh
cat > hadoop-home/conf/core-site.xml <<EOF 
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<!-- Put site-specific property overrides in this file. -->

<configuration>
  <property>
     <name>fs.default.name</name>
     <value>hdfs://master:9000</value>
  </property>
  <property>
     <name>hadoop.tmp.dir</name>
     <value>/tmp</value>
  </property>
</configuration>
EOF

mkdir tmp
cat > hadoop-home/conf/hdfs-site.xml <<EOF 
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<!-- Put site-specific property overrides in this file. -->

<configuration>
  <property>
     <name>dfs.replication</name>
     <value>2</value>
  </property>
  <property>
      <name>hadoop.tmp.dir</name> 
      <value>/home/vagrant/tmp/</value>
  </property>
</configuration>
EOF

cat > hadoop-home/conf/mapred-site.xml <<EOF 
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>

<!-- Put site-specific property overrides in this file. -->

<configuration>
  <property>
     <name>mapred.job.tracker</name>
     <value>master:9001</value>
  </property>
</configuration>
EOF

cat > hadoop-home/conf/masters <<EOF 
masters
EOF

cat > hadoop-home/conf/slaves <<EOF 
slave1
slave2
slave3
EOF
