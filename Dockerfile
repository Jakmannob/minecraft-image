FROM ibm-semeru-runtimes:open-20-jdk-jammy
RUN useradd -m server
RUN apt-get update && apt-get install -y wget vim
WORKDIR /home/server
COPY setup.sh .
RUN chown server:server setup.sh
RUN chmod +x setup.sh
USER server
RUN ./setup.sh
# Run command: java -Xmx1024M -Xms1024M -jar minecraft_server.1.20.1.jar nogui
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
COPY server.properties .
