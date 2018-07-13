#!/bin/bash

JETTY_HOME=/opt/jetty
JETTY_BASE=/opt/jetty-base

sudo mkdir -p $JETTY_BASE
sudo chown -R $USER: $JETTY_BASE
cd $JETTY_BASE

# IntelliJ IDEA does not support start.d
# java -jar $JETTY_HOME/start.jar --create-startd
java -jar $JETTY_HOME/start.jar --add-to-start=http,deploy,jmx,annotations
