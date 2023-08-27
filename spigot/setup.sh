#!/bin/bash


# * Go into the server directory
cd spigot-server

# * Run once to create files
java -Xms6G -Xmx6G -XX:+UseG1GC -jar spigot.jar nogui

# * Set up server icon
cp ../server-icon.png .

# * Exit server directory
cd ..
