#!/bin/sh

docker run -d --name oresama1 -v ./config/oresama1:/usr/share/elasticsearch/config \
                              -v ./oresama1:/usr/share/elasticsearch/data \
                              -e "ES_HEAP_SIZE=256m" \
                              -p 9200:9200 oresama_es:latest
docker run -d --name oresama2 -v ./config/oresama2:/usr/share/elasticsearch/config \
                              -v ./esdata/oresama2:/usr/share/elasticsearch/data \
                              -e "ES_HEAP_SIZE=256m" \
                              -p 9201:9200 oresama_es:latest
docker run -d --name anatasama -v ./config/anatasama1:/usr/share/elasticsearch/config \
                               -v ./anatasama1:/usr/share/elasticsearch/data \
                               -e "ES_HEAP_SIZE=256m" \
                               -p 9202:9200 oresama_es:latest
