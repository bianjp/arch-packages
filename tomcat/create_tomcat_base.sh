#!/bin/bash

CATALINA_HOME=/opt/tomcat
CATALINA_BASE=/opt/tomcat-base

sudo rm -rf "$CATALINA_BASE"
sudo mkdir -p "$CATALINA_BASE"
sudo chown -R "$USER": "$CATALINA_BASE"
cd "$CATALINA_BASE"

cp -r "$CATALINA_HOME"/{conf,webapps} .
