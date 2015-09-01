#!/bin/bash
tty -s
sudo docker-compose  -f yml/docker-compose.test.yml up -d \
  && sudo docker-compose  -f yml/docker-compose.test.yml start \
  && sudo docker exec -i  yml_webtest_1  /bin/sh -c 'vendor/bin/phing' \
  && sudo docker-compose  -f yml/docker-compose.test.yml stop \
  && sudo docker-compose  -f yml/docker-compose.test.yml rm -f
