curl http://www2.census.gov/programs-surveys/acs/summary_file/2014/documentation/user_tools/ACS_5yr_Seq_Table_Number_Lookup.txt\
    > ACS_5yr_Seq_Table_Number_Lookup.txt
#TODO update load_table.py to automatically use the length of the file unless a samplesize is specified
python ../../commands/load_table.py -f ACS_5yr_Seq_Table_Number_Lookup.txt -t acs2014_5yr.meta -o create_meta14.sql -s 24878
psql -dpropdata -hfloppyjoe -Upostgres -f create_meta14.sql
cat ACS_5yr_Seq_Table_Number_Lookup.txt |\
    psql -dpropdata -Upostgres -h floppyjoe -c \
    "COPY acs2014_5yr.meta FROM STDIN WITH CSV HEADER ENCODING 'latin1';"
rm ACS_5yr_Seq_Table_Number_Lookup.txt
rm create_meta14.sql
