#!/bin/bash


# Run once to create files
java -Xmx1024M -Xms1024M -jar server.jar nogui

# * Accept EULA
# Strip last line
sed -i '$ d' eula.txt
# Replace with TRUE
echo 'eula=TRUE' >> eula.txt
