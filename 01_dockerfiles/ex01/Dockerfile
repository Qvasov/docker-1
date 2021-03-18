FROM debian

EXPOSE 9987/udp 10011 30033

RUN apt-get update && apt-get upgrade && \
    apt-get install -y wget bzip2 && \
    wget https://files.teamspeak-services.com/releases/server/3.13.3/teamspeak3-server_linux_amd64-3.13.3.tar.bz2 && \
    tar -xf teamspeak3-server_linux_amd64-3.13.3.tar.bz2 && \
    touch teamspeak3-server_linux_amd64/.ts3server_license_accepted
    
WORKDIR /teamspeak3-server_linux_amd64/

ENTRYPOINT sh ts3server_minimal_runscript.sh

# docker build -t ex01 . && docker run --rm -it -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
