#enter container via docker-exec
#in container enter mongo
#in order to connect mongo-1 with mongo-2 and mongo-3 copy and paste command lines below
config = {_id:"mongo-set",members:[{_id:0,host:"mongo-1:27017"},{_id:1,host:"mongo-2:27017"},{_id:2,host:"mongo-3:27017"}]};
rs.initiate(config);

#exit mongo and restore basckup via command line below
mongorestore -d reservations reservations/

#create connectioin from secondary mongos enter their container and paste command line below in mongo
rs.slaveOk()

#if Show dbs shows reservations, congrats, everything works!
