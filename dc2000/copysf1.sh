#copy the data from the downloaded dc2000 sequence files into the db
bash -c '
for i in $(seq -w 01 20);do
    for f in *000${i}_uf1.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf100${i} from stdin with csv";
    done &
done;
for i in $(seq -w 21 39);do
    for f in *000${i}_uf1.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf100${i} from stdin with csv";
    done &
done;
'
