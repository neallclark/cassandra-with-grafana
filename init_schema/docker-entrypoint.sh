#!/bin/bash

echo $cassandra_node
echo "sleep to give time for the cassandra nodes to finish starting..."
sleep 120;
echo "Initialising the database schema."
cqlsh $cassandra_node -f schema.cql;

