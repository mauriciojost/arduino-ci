// https://jenkins.io/doc/book/pipeline/jenkinsfile/
// Scripted pipeline (not declarative)
pipeline {
  agent {
    docker { image 'mauriciojost/arduino-ci:latest' }
  }
  stages {
    stage('Build') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        sh './pull_dependencies'
        sh 'platformio run'
      }
    }
    stage('Test') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        sh './launch_tests'
      }
    }
  }
}
