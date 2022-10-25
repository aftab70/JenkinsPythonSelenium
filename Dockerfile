FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install apt-utils wget -y
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install ./google-chrome-stable_current_amd64.deb -y
RUN wget https://chromedriver.storage.googleapis.com/107.0.5304.62/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip 
RUN mv chromedriver /usr/bin/chromedriver 
RUN chown root:root /usr/bin/chromedriver 
RUN chmod +x /usr/bin/chromedriver
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install selenium webdriver-manager pytest pytest-html py
