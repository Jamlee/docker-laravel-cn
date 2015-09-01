#!/bin/bash
#author jamlee webboy89860@gmail.com
con_name=web

name=`docker-compose ps| grep $con_name | awk '{print $1}'`

if [ "$1" == "apache" ]; then
  sudo docker exec -ti $name  /bin/bash
fi

if [ "$1" == "mysql" ]; then
  db_name=`docker-compose ps| grep db_1 | awk '{print $1}'`
  sudo docker exec -ti $db_name  /bin/bash
fi

if [ "$1" == "redis" ]; then
  redis_name=`docker-compose ps| grep redis_1 | awk '{print $1}'`
  sudo docker exec -ti $redis_name  /bin/bash
fi

#end
