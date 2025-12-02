#für Bash Skript:
docker login -u lam132363

docker run -p6000:6379 -d --name redis_new redis

docker run -p6001:6379 -d --name redis_old redis:8.2

docker pull mongo

docker pull mongo-express

docker ps
