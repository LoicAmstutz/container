#für Bash Skript:
docker login -u lam132363

docker run -p6000:6379 -d --name redis_new redis

docker run -p6001:6379 -d --name redis_old redis:8.2

docker pull mongo

docker pull mongo-express

docker network create mongo-network

echo "für Mongo-Datenbank"
docker run --name mongodb -p27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=Welcome$21 --net mongo-network mongo

echo "für UI von Mongo-Datenbank"
docker run -d -p8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=Welcome$21 -e ME_CONFIG_MONGODB_SERVER=mongodb --net mongo-network --name mongo-express mongo-express

docker ps
