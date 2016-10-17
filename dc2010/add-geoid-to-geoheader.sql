alter table dc_2010.geoheader_sf1 add geoid text;
update dc_2010.geoheader_sf1 
set geoid = concat(state,county,tract,blkgrp)
where sumlev in (40, 50, 140, 150)
and geocomp = '00'
;

--test out the query
select concat(state,county,tract,blkgrp)
from dc_2010.geoheader_sf1
where sumlev in (40, 50, 140, 150)
and geocomp = '00'
limit 100
;
