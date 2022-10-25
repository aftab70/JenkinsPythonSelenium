FROM jenkins/jenkins:lts
USER root
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get install -y python3
RUN ln -s /usr/bin/python3.8 /usr/bin/python
RUN apt-get install -y python3-pip
RUN python3 -m pip3 install selenium
RUN python3 -m pip3 install pytest
RUN python3 -m pip3 install pytest-html
