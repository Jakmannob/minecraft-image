#!/bin/bash


# * Download BuildTools
# ? Idk if this may change? Probably needs an update some time in the future
# ! Adjust Link in future versions -> for any links in this file
wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

# * Running BuildTools.jar
git config --global --unset core.autocrlf
java -jar BuildTools.jar
