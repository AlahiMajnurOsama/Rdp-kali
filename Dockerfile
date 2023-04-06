FROM danielguerra/ubuntu-xrdp:kali

RUN apt-get update && apt-get install -y wget unzip sudo 
RUN wget https://raw.githubusercontent.com/AlahiMajnurOsama/xyz/main/ngrok.sh
RUN bash ngrok.sh
