#!/bin/bash

install_solr(){

tar xzf solr-6.5.1-SNAPSHOT.tgz solr-6.5.1-SNAPSHOT/bin/install_solr_service.sh --strip-components=2

sudo rm -rf /etc/init.d/solr

sudo rm -rf /opt/solr

sudo rm -rf /opt/solr-6.5.1-SNAPSHOT

sudo bash ./install_solr_service.sh solr-6.5.1-SNAPSHOT.tgz  

sudo chmod 777 -R /opt/solr

/opt/solr/bin/solr restart 

xdg-open "http://localhost:8983/solr/"

}

install_solr
