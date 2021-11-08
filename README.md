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

## Jenkins


1. Create a job.
2. Ensure to pass your docker credentials (it will publish an image there)
3. Provide a SETTINGS variable with default multi-line value
```
python=python:2.7
platformio=3.5.3
gcovr=4.1

```
4. The shell block: 
```
echo $SETTINGS > settings2.conf
bash build settings2.conf
```
5. That's all
