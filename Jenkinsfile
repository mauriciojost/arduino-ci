node {
  checkout scm
  docker.withRegistry('https://registry.hub.docker.com', 'docker_pass') {
    def customImage = docker.build("mauriciojost/arduino-ci:0.3.0")
    /* Push the container to the custom Registry */
    customImage.push()
  }
}
