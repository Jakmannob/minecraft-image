FROM ibm-semeru-runtimes:open-20-jdk-jammy
EXPOSE 25565
RUN useradd -m server
RUN apt-get update && apt-get install -y wget vim git
WORKDIR /home/server
COPY build.sh .
RUN chown server:server build.sh
RUN chmod +x build.sh
USER server
RUN ./build.sh
