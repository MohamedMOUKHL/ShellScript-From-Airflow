#!/bin/bash
echo "extract_transform_load"
# cut command to extract the fields timestamp and visitorid writes to a new file extracted.txt
cut -f1,4 -d"#" /airflow-docker/dags/web-server-access-log.txt > /airflow-docker/dags/extracted.txt

# tr command to transform by capitalizing the visitorid.
tr "[a-z]" "[A-Z]" < /airflow-docker/dags/extracted.txt > /airflow-docker/dags/capitalized.txt

# tar command to compress the extracted and transformed data.
tar -czvf /airflow-docker/dags/log.tar.gz /airflow-docker/dags/capitalized.txt