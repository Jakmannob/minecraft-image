# Select base image (openjdk 21)
FROM ibm-semeru-runtimes:open-21-jdk-noble

# Open the required port for the minecraft server
EXPOSE 25565 8123

# Add a nonprivileged user
RUN useradd -m server

# Install necessary packages
RUN apt-get update && apt-get install -y wget vim git

# Change directory
WORKDIR /home/server

# Copy server icon
COPY server-icon.png .
RUN chown server:server server-icon.png

# Set up build script
COPY build.sh .
RUN chown server:server build.sh
RUN chmod +x build.sh

# Change user
USER server

# Build server
RUN ./build.sh

# Change user
USER root

# Set up setup script
COPY setup.sh .
RUN chown server:server setup.sh
RUN chmod +x setup.sh

# Set up plugins download script
COPY download-plugins.sh .
RUN chown server:server download-plugins.sh
RUN chmod +x download-plugins.sh

# Set up update configs script
COPY update-configs.sh .
RUN chown server:server update-configs.sh
RUN chmod +x update-configs.sh

# Set up server properties
COPY server.properties .
RUN chown server:server server.properties

# Set up plugin config files
COPY plugin-settings .
RUN chown -R server:server plugins

# Change user
USER server

# Download plugins
RUN ./download-plugins.sh

# Set up server
RUN ./setup.sh

# Set up plugin configs
RUN ./update-configs.sh

# Change directory
WORKDIR /home/server/spigot-server

# Run server
CMD ["java", "-Xms12G", "-Xmx12G", "-XX:+UseG1GC", "-jar", "spigot.jar", "nogui"]
# * Change to access shell
#CMD ["bash"]
