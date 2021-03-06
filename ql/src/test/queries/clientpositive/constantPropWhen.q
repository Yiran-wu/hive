set hive.mapred.mode=nonstrict;

drop table test_1; 

create table test_1 (id int, id2 int); 

insert into table test_1 values (123, NULL), (NULL, NULL), (NULL, 123), (123, 123);

explain SELECT cast(CASE WHEN id = id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1; 

SELECT cast(CASE WHEN id = id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1; 

explain SELECT cast(CASE id when id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1;

SELECT cast(CASE id when id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1;

explain SELECT cast(CASE WHEN id = id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1; 

SELECT cast(CASE WHEN id = id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1; 

explain SELECT cast(CASE id when id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1;

SELECT cast(CASE id when id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1;


set hive.cbo.enable=false;

explain SELECT cast(CASE WHEN id = id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1; 

SELECT cast(CASE WHEN id = id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1; 

explain SELECT cast(CASE id when id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1;

SELECT cast(CASE id when id2 THEN FALSE ELSE TRUE END AS BOOLEAN) AS b FROM test_1;

explain SELECT cast(CASE WHEN id = id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1; 

SELECT cast(CASE WHEN id = id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1; 

explain SELECT cast(CASE id when id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1;

SELECT cast(CASE id when id2 THEN TRUE ELSE FALSE END AS BOOLEAN) AS b FROM test_1;

