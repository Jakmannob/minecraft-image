# ? Idk if this may change? Probably needs an update some time in the future
# ! Adjust Link in future versions
wget -nv https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar

# Run once to create files
java -Xmx1024M -Xms1024M -jar server.jar nogui

# Accept EULA
# Strip last line
sed -i '$ d' eula.txt
# Replace with TRUE
echo 'eula=TRUE' >> eula.txt
