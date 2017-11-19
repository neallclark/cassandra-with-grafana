FROM cassandra:latest
ADD metrics-graphite-3.1.2.jar /usr/share/cassandra/lib
ADD metrics_reporter_graphite.yaml /etc/cassandra
RUN echo "METRICS_REPORTER_CFG=\"metrics_reporter_graphite.yaml\"" >> /etc/cassandra/cassandra-env.sh
RUN echo "JVM_OPTS=\"\$JVM_OPTS -Dcassandra.metricsReporterConfigFile=\$METRICS_REPORTER_CFG\"" >> /etc/cassandra/cassandra-env.sh