FROM debian
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget default-jre
WORKDIR minecraft_server
RUN wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
RUN echo 'eula=true' > eula.txt
EXPOSE 25565
RUN java -Xmx1024M -Xms1024M -jar server.jar nogui

# docker build -t bonus0 . && docker run --rm -d -p 25565:25565 bonus0
# Minecraft server
