#!/bin/bash


# * Go into the server directory
cd spigot-server

# * Run once to create files
java -Xms12G -Xmx12G -XX:+UseG1GC -jar spigot.jar nogui

# * Set up server icon
mv ../server-icon.png .

# * Set up server properties
mv ../server.properties .

echo "Accepting EULA"
# * Accept EULA
# Strip last line
sed -i '$ d' eula.txt
# Replace with TRUE
echo 'eula=TRUE' >> eula.txt

# * Exit server directory
cd ..
