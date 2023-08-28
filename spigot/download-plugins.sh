#!/bin/bash


# ! These links might change in the future
# WorldGuard
wget -O worldguard.jar https://dev.bukkit.org/projects/worldguard/files/4675318/download

# WorldEdit
wget -O worldedit.jar https://dev.bukkit.org/projects/worldedit/files/4586220/download

# LuckPerms
wget -O luckperms.jar https://ci.lucko.me/job/LuckPerms/lastStableBuild/artifact/bukkit/loader/build/libs/LuckPerms-Bukkit-5.4.102.jar

# EssentialsX
wget -O essentialsxcore.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsX-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxchat.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXChat-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxspawn.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXSpawn-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxdiscord.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXDiscord-2.21.0-dev+13-ee1111f.jar
wget -O essentialsxdiscordlink.jar https://ci.ender.zone/job/EssentialsX/lastSuccessfulBuild/artifact/jars/EssentialsXDiscordLink-2.21.0-dev+13-ee1111f.jar

# Vault
wget -O vault.jar https://github.com/MilkBowl/Vault/releases/download/1.7.3/Vault.jar

# MultiverseCore
wget -O multiversecore.jar https://github.com/Multiverse/Multiverse-Core/releases/download/4.3.11/multiverse-core-4.3.11.jar

# Dynmap
wget -O dynmap.jar https://mediafilez.forgecdn.net/files/4632/182/Dynmap-3.6-spigot.jar

# Grief Prevention
wget -O griefprevention.jar https://mediafilez.forgecdn.net/files/4433/61/GriefPrevention.jar

# Chest Shop
wget -O ChestShop.jar https://ci.minebench.de/job/ChestShop-3/lastSuccessfulBuild/artifact/target/ChestShop.jar

# * Copy the .jar files into the plugins folder
mkdir -pv /home/server/spigot-server/plugins
cp -v *.jar /home/server/spigot-server/plugins
ls /home/server/spigot-server/plugins
