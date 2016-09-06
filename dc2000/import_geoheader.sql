#import geoheader for sf1
zcat usgeo_uf1.zip | psql -dpropdata -Upostgres -c "copy dc2000.tmp_geoheader from stdin with encoding 'latin1';"
