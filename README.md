# README

Docker image & Jenkinsfile for Arduino projects

Thought to be used via pipelines in Jenkins.

To build, set up a jenkins instance and create a Jenkinsfile pipeline. 

Remember to create credentials containing the docker user and password and name it `docker_pass`.

## Manual build 

Install:

```
sudo apt-get install docker-ce
```

Then :

```
sudo docker login --username=mauriciojost"
sudo docker build -t mauriciojost/arduino-ci:`cat version.txt` .
sudo docker push mauriciojost/arduino-ci # account at docker.com needed to publish
```
