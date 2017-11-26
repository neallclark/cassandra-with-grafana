## Cassandra with Metrics Stack

I created this to test out sending metrics from _Cassandra_ to _Grafana_.
And then I added Kafka and Spark to play with. They are optional though, just combine the compose files as needed.

#### up-cassandra.sh
Run this to start just the cassandra cluster


#### up-cassandra-kafka.sh
Run this to start the cassandra cluster and kafka


#### up-cassandra-kafka-spark.sh
Run this to start the cassandra cluster with kafka and spark


#### up-cassandrasingle-kafka-spark.sh
Run this to start a single cassadnra instance with kafka and spark


#### down.sh
Run this to take all the containers down


#### TODO
- Feed some random data into it
- Fetch the metrics-graphite.jar on build and remove from repo
- Change from single kafka instance to multiple

#### References
https://blog.pythian.com/monitoring-apache-cassandra-metrics-graphite-grafana/
