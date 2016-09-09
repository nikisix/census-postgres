CREATE SCHEMA dc2000;

DROP TABLE IF EXISTS dc2000.tmp_geosf1;
CREATE TABLE dc2000.tmp_geosf1 (
	all_fields varchar
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE)
;

DROP TABLE IF EXISTS dc2000.tmp_geosf3;
CREATE TABLE dc2000.tmp_geosf3 (
	all_fields varchar
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE)
;
