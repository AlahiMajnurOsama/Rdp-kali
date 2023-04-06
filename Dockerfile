



FROM danielguerra/ubuntu-xrdp:kali

RUN apt-get update && apt-get install -y wget unzip

RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \

    unzip ngrok-stable-linux-amd64.zip -d /usr/local/bin && \

    rm ngrok-stable-linux-amd64.zip

CMD


