#create the dc2000 sf 1-4 tables
for f in create_sequence_tables/dc_2000-sf1*.sql; do psql -f $f -dpropdata -Upostgres; done;
#for f in create_sequence_tables/dc_2000-sf2*.sql; do psql -f $f -dpropdata -Upostgres; done;
for f in create_sequence_tables/dc_2000-sf3*.sql; do psql -f $f -dpropdata -Upostgres; done;
#for f in create_sequence_tables/dc_2000-sf4*.sql; do psql -f $f -dpropdata -Upostgres; done;
