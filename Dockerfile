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
RUN wget -nc https://dl-ssl.google.com/linux/linux_signing_key.pub 
RUN cat linux_signing_key.pub | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/linux_signing_key.gpg  >/dev/null
RUN 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/chrome.list'
RUN apt-get update && apt-get install google-chrome-stable -y


