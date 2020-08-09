# README

Docker image & Jenkinsfile for Arduino projects

To build, set up a jenkins instance, provide docker credentials naming the variables USERNAME and PASSWORD.
In the shell step of the build, add 

```bash
bash build
```

## Manual build 

Install:

```
sudo apt-get install docker-ce
```

Then :

```
./build
```
