#!/bin/bash


# ! These links might change in the future
# WorldEdit
wget -O worldedit.jar https://cdn.modrinth.com/data/1u6JkXh5/versions/Jk1z2u7n/worldedit-bukkit-7.3.16.jar

# Dynmap
wget -O dynmap.jar https://www.curseforge.com/api/v1/mods/31620/files/6769644/download

# AutoStop
wget -O autostop.jar https://github.com/pmdevita/AutoStop/releases/download/1.0/AutoStop-1.0-SNAPSHOT.jar

# Chunky
wget -O chunky.jar https://cdn.modrinth.com/data/fALzjamp/versions/P3y2MXnd/Chunky-Bukkit-1.4.40.jar

# * Copy the .jar files into the plugins folder
mkdir -pv /home/server/spigot-server/plugins
cp -v *.jar /home/server/spigot-server/plugins
ls /home/server/spigot-server/plugins
