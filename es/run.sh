#!/bin/sh

docker run -d --name oresama1 -v /vagrant/es/config/oresama1:/usr/share/elasticsearch/config \
                              -v /var/esdata/oresama1:/usr/share/elasticsearch/data \
                              -e "ES_HEAP_SIZE=256m" \
                              -p 9200:9200 oresama_es:latest
docker run -d --name oresama2 -v /vagrant/es/config/oresama2:/usr/share/elasticsearch/config \
                              -v /var/esdata/oresama2:/usr/share/elasticsearch/data \
                              -e "ES_HEAP_SIZE=256m" \
                              -p 9201:9200 oresama_es:latest
docker run -d --name anatasama -v /vagrant/es/config/anatasama1:/usr/share/elasticsearch/config \
                               -v /var/esdata/anatasama1:/usr/share/elasticsearch/data \
                               -e "ES_HEAP_SIZE=256m" \
                               -p 9202:9200 oresama_es:latest

