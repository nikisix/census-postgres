select geoid
into acs2014_5yr.tmp_geoheader 
from acs2014_5yr.geoheader;

update acs2014_5yr.geoheader
set geoid_acs = substring(tmp_geoheader.geoid from 8)
from acs2014_5yr.tmp_geoheader
where geoheader.geoid = tmp_geoheader.geoid
and tmp_geoheader.component = '00'
and geoheader.component = '00'
;

drop table acs2014_5yr.tmp_geoheader;

create index acs2014_5yr_geoheader_geoidacs_idx on acs2014_5yr.geoheader (geoid_acs);
