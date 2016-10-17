#!/bin/bash
mkdir -p /zdrive/dc2010/sf1/unzipped
cd /zdrive/dc2010/sf1/unzipped
#for f in *.zip; do unzip -d unzipped $f; done;
for i in $(seq -w 01 13);do
    for f in *000${i}2010.sf1;do
        echo $f
        cat $f | psql -dpropdata -Upostgres -c"copy dc_2010.sf1_000${i} from stdin with csv encoding 'latin1';";
    done &
done;
