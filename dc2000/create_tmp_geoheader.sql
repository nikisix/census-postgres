CREATE SCHEMA dc2000;
DROP TABLE IF EXISTS dc2000.tmp_geoheader;
CREATE TABLE dc2000.tmp_geoheader (
	all_fields varchar
)
WITH (autovacuum_enabled = FALSE, toast.autovacuum_enabled = FALSE)
;
