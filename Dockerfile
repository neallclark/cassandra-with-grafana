FROM cassandra:latest
COPY metrics/metrics-graphite-3.1.2.jar /usr/share/cassandra/lib
ARG graphiteprefix
COPY metrics/metrics_reporter_graphite.yaml /etc/cassandra

RUN sed -i "s|__GRAPHITE_PREFIX__|$graphiteprefix|g" /etc/cassandra/metrics_reporter_graphite.yaml
RUN echo "METRICS_REPORTER_CFG=\"metrics_reporter_graphite.yaml\"" >> /etc/cassandra/cassandra-env.sh
RUN echo "JVM_OPTS=\"\$JVM_OPTS -Dcassandra.metricsReporterConfigFile=\$METRICS_REPORTER_CFG\"" >> /etc/cassandra/cassandra-env.sh

