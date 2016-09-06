#import geoheader for sf1
#zcat usgeo_uf1.zip | psql -dpropdata -Upostgres -c "copy dc2000.tmp_geoheader from stdin with encoding 'latin1';"

for file in /zdrive/dc2000/sf1/*geo*.zip; do
    zcat $file | psql -dpropdata -Upostgres -c "copy dc2000.tmp_geoheader from stdin with encoding 'latin1';";
done;

#/zdrive/dc2000/sf1/akgeo_uf1.zip
#/zdrive/dc2000/sf1/algeo_uf1.zip
#/zdrive/dc2000/sf1/argeo_uf1.zip
#/zdrive/dc2000/sf1/azgeo_uf1.zip
#/zdrive/dc2000/sf1/cageo_uf1.zip
#/zdrive/dc2000/sf1/cogeo_uf1.zip
#/zdrive/dc2000/sf1/ctgeo_uf1.zip
#/zdrive/dc2000/sf1/dcgeo_uf1.zip
#/zdrive/dc2000/sf1/degeo_uf1.zip
#/zdrive/dc2000/sf1/flgeo_uf1.zip
#/zdrive/dc2000/sf1/gageo_uf1.zip
#/zdrive/dc2000/sf1/higeo_uf1.zip
#/zdrive/dc2000/sf1/iageo_uf1.zip
#/zdrive/dc2000/sf1/idgeo_uf1.zip
#/zdrive/dc2000/sf1/ilgeo_uf1.zip
#/zdrive/dc2000/sf1/ingeo_uf1.zip
#/zdrive/dc2000/sf1/ksgeo_uf1.zip
#/zdrive/dc2000/sf1/kygeo_uf1.zip
#/zdrive/dc2000/sf1/lageo_uf1.zip
#/zdrive/dc2000/sf1/mageo_uf1.zip
#/zdrive/dc2000/sf1/mdgeo_uf1.zip
#/zdrive/dc2000/sf1/megeo_uf1.zip
#/zdrive/dc2000/sf1/migeo_uf1.zip
#/zdrive/dc2000/sf1/mngeo_uf1.zip
#/zdrive/dc2000/sf1/mogeo_uf1.zip
#/zdrive/dc2000/sf1/msgeo_uf1.zip
#/zdrive/dc2000/sf1/mtgeo_uf1.zip
#/zdrive/dc2000/sf1/ncgeo_uf1.zip
#/zdrive/dc2000/sf1/ndgeo_uf1.zip
#/zdrive/dc2000/sf1/negeo_uf1.zip
#/zdrive/dc2000/sf1/nhgeo_uf1.zip
#/zdrive/dc2000/sf1/njgeo_uf1.zip
#/zdrive/dc2000/sf1/nmgeo_uf1.zip
#/zdrive/dc2000/sf1/nvgeo_uf1.zip
#/zdrive/dc2000/sf1/nygeo_uf1.zip
#/zdrive/dc2000/sf1/ohgeo_uf1.zip
#/zdrive/dc2000/sf1/okgeo_uf1.zip
#/zdrive/dc2000/sf1/orgeo_uf1.zip
#/zdrive/dc2000/sf1/pageo_uf1.zip
#/zdrive/dc2000/sf1/prgeo_uf1.zip
#/zdrive/dc2000/sf1/rigeo_uf1.zip
#/zdrive/dc2000/sf1/scgeo_uf1.zip
#/zdrive/dc2000/sf1/sdgeo_uf1.zip
#/zdrive/dc2000/sf1/tngeo_uf1.zip
#/zdrive/dc2000/sf1/txgeo_uf1.zip
#/zdrive/dc2000/sf1/usgeo_uf1.zip
#/zdrive/dc2000/sf1/utgeo_uf1.zip
#/zdrive/dc2000/sf1/vageo_uf1.zip
#/zdrive/dc2000/sf1/vtgeo_uf1.zip
#/zdrive/dc2000/sf1/wageo_uf1.zip
#/zdrive/dc2000/sf1/wigeo_uf1.zip
#/zdrive/dc2000/sf1/wvgeo_uf1.zip
#/zdrive/dc2000/sf1/wygeo_uf1.zip
