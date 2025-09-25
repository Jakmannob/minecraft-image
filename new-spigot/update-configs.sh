#!/bin/bash


cd /home/server

mkdir -p spigot-server/plugins
cp -r plugins/* spigot-server/plugins
mkdir -p spigot-server/world/datapacks
cp -r datapacks/* spigot-server/world/datapacks
