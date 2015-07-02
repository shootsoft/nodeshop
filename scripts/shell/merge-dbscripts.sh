# /bin/bash
cd ../db/
rm -rf creation.sql
cat `ls` > creation.sql
