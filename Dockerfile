FROM ubuntu:latest
ENV TERM linux
WORKDIR /root
RUN apt update
RUN apt install -y git
RUN git clone https://github.com/vmware/vsphere-automation-sdk-.NET
RUN apt-get update
RUN apt-get install -y wget
RUN apt update
RUN apt install -y software-properties-common apt-transport-https wget
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN apt update
RUN apt -y install code
RUN apt update
#RUN apt install -y nuget

