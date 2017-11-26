## Cassandra with Metrics Stack

I created this to test out sending metrics from _Cassandra_ to _Grafana_.

#### up-cassandra.sh
Run this to start just the cassandra cluster

#### up-cassandra-kafka.sh
Run this to start the cassandra cluster and kafka

#### down.sh
Run this to take all the containers down

#### TODO
- Feed some random data into it
- Fetch the metrics-graphite.jar on build and remove from repo
- Add Spark
- Change from single kafka instance to multiple

#### References
https://blog.pythian.com/monitoring-apache-cassandra-metrics-graphite-grafana/
