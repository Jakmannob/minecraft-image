#!/bin/bash


cd ~/spigot-server/plugins

# ! These links might change in the future
# WorldGuard
wget -O worldguard.jar https://dev.bukkit.org/projects/worldguard/files/4675318/download

# WorldEdit
wget -O worldedit.jar https://dev.bukkit.org/projects/worldedit/files/4586220/download

# LuckPerms
wget -O luckperms.jar https://www.spigotmc.org/resources/luckperms.28140/download?version=463843

# EssentialsX
wget -O essentialsxcore.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsX-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxchat.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXChat-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxspawn.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXSpawn-2.21.0-dev+13-ee1111f.jar

# Vault
wget -O vault.jar https://www.spigotmc.org/resources/vault.34315/download?version=344916

# MultiverseCore
wget -O multiversecore.jar https://www.spigotmc.org/resources/multiverse-core.390/download?version=420035

# Dynmap
wget -O dynmap.jar https://mediafilez.forgecdn.net/files/4632/182/Dynmap-3.6-spigot.jar

# Grief Prevention
wget -O griefprevention.jar https://mediafilez.forgecdn.net/files/4433/61/GriefPrevention.jar

cd ~
