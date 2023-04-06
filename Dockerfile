FROM danielguerra/ubuntu-xrdp:kali

RUN apt-get update && apt-get install -y sudo 
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip -d /bin && \
    rm -f ngrok-stable-linux-amd64.zip && \
    apt-get remove -y wget unzip && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/bin/ngrok", "tcp", "3388"]
