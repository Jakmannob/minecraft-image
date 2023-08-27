# Select base image (openjdk 20)
FROM ibm-semeru-runtimes:open-20-jdk-jammy

# Open the required port for the minecraft server
EXPOSE 25565

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

# Set up setup script
COPY setup.sh .
RUN chown server:server setup.sh
RUN chmod +x setup.sh

# Set up server properties
COPY server.properties .
RUN chown server:server server.properties

# Change user
USER server

# Build server
RUN ./build.sh

# Set up server
RUN ./setup.sh
