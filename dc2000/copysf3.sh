#copy the data from the downloaded dc2000 sequence files into the db
bash -c '
for i in $(seq -w 01 20);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
for i in $(seq -w 21 39);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
for i in $(seq -w 40 60);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
for i in $(seq -w 60 76);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
'

bash -c '
for i in $(seq -w 40 60);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
for i in $(seq -w 60 76);do
#    echo "Copying seq $i"
    for f in *000${i}_uf3.zip;do
        zcat $f | psql -dpropdata -Upostgres -c"copy dc2000.sf300${i} from stdin with csv";
    done &
done;
'
