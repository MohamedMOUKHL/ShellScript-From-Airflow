Terminal commands:

curl 'https://airflow.apache.org/docs/apache-airflow/2.9.1/docker-compose.yaml' -o 'docker-compose.yaml'

mkdir dags
mkdir logs
mkdir plugins

docker compose up airflow-init

docker compose up (set up the services)

docker ps (check the services)


