#/!bin/bash
mongorestore -d reservations reservations/
mongod --replSet rs0 --port 27017 --bind_ip localhost,mongo-1 --dbpath /srv/mongodb/rs0-0  --oplogSize 128
mongod --replSet rs0 --port 27018 --bind_ip localhost,mongo-2 --dbpath /srv/mongodb/rs0-1  --oplogSize 128
mongod --replSet rs0 --port 27019 --bind_ip localhost,mongo-3 --dbpath /srv/mongodb/rs0-2 --oplogSize 128