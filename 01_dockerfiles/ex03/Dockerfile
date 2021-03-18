FROM debian

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get dist-upgrade -y && \
    apt-get install -y curl openssh-server ca-certificates apt-utils
RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
RUN apt-get install -y gitlab-ce
RUN mkdir -p /etc/gitlab/ssl
RUN openssl req -x509 -newkey rsa:2048 -keyout /etc/gitlab/ssl/gitlab.example.com.key -out /etc/gitlab/ssl/gitlab.example.com.crt -days 365 -nodes -subj '/CN=gitlab.example.com'
EXPOSE 80 443 22
ENTRYPOINT mkdir -p /run/sshd && \
    (/usr/sbin/sshd -D &) && \
    (/opt/gitlab/embedded/bin/runsvdir-start &) && \
    sed -i 's/http:/https:/' /etc/gitlab/gitlab.rb && \
    gitlab-ctl reconfigure && \
    gitlab-ctl start && \
    gitlab-ctl tail

# docker-machine create -d virtualbox --virtualbox-memory 4096 gitlab
# eval "$(docker-machine env gitlab)"
# docker build -t ex03 . && docker run --rm -it -p 4022:22/tcp -p 80:80/tcp -p 443:443/tcp --privileged ex03
# ssh-keygen -C dbennie@21.ru
# GIT_SSH_COMMAND='ssh -p 4022' git clone git@192.168.99.102:dbennie/project.git          ОПЦИОНАЛЬНО -o "UserKnownHostsFile /dev/null"
# git -c http.sslVerify=false clone https://192.168.99.103/dbennie/project.git
