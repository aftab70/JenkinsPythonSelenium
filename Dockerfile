FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install apt-utils wget -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install selenium
RUN pip3 install pytest
RUN pip3 install pytest-html
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb -y
