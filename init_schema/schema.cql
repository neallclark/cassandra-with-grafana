CREATE KEYSPACE IF NOT EXISTS test
WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor' : 1
};

CREATE TABLE IF NOT EXISTS test.events (
	point_id uuid,
	date date,
	event_time time,
	value double,
	PRIMARY KEY ((point_id, date),event_time)
);