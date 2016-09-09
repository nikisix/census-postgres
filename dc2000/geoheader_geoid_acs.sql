select concat(state, county, tract, blkgrp) as geoid,* 
into dc2000.geosf1_geoid
from dc2000.geosf1
;
drop table dc2000.geosf1 cascade;
alter table dc2000.geosf1_geoid rename to geosf1;


select concat(state, county, tract, blkgrp) as geoid,* 
into dc2000.geosf3_geoid
from dc2000.geosf3
;
drop table dc2000.geosf3 cascade;
alter table dc2000.geosf3_geoid rename to geosf3;
