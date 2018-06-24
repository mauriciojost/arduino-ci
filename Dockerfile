FROM python:2.7

RUN pip install -U platformio==3.5.3

COPY sources.list /etc/apt/sources.list

# From https://www.cloudbees.com/blog/get-started-jenkins-20-docker
# Create the jenkins user
#RUN useradd -d "/var/jenkins_home" -u 1000 -m -s /bin/bash jenkins # according to documentation
RUN useradd -d "/var/jenkins_home" -u 108 -m -s /bin/bash jenkins # the one that works

RUN mkdir -p /var/jenkins_home/.ssh/
RUN chmod 700 /var/jenkins_home/.ssh/
COPY ssh-config /var/jenkins_home/.ssh/config
RUN chmod 600 /var/jenkins_home/.ssh/config
RUN chown -R jenkins:jenkins /var/jenkins_home/.ssh/

# Create the folders and volume mount points
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
VOLUME ["/var/log/jenkins", "/var/jenkins_home"]

USER jenkins

CMD ["echo", "Data container for Jenkins"]

WORKDIR /var/jenkins_home/

ENV HOME /var/jenkins_home/

