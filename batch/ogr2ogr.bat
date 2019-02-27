rem appends gz files to postgis
for %%A in ("I:\somwhere\*.gz") do ^
ogr2ogr -append -a_srs EPSG:27700 -f ^ 
"PostgreSQL" PG:"host=localhost schemas=schema user=postgres dbname=gis password=pass" "%%~fA"
