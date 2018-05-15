// https://jenkins.io/doc/book/pipeline/jenkinsfile/
// Scripted pipeline (not declarative)
pipeline {
  agent {
    docker { image 'mauriciojost/scala-olympus-photosync:latest' }
  }
  stages {
    stage('Build') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        sh 'sbt -Dsbt.log.noformat=true -Dsbt.global.base=.sbt -Dsbt.boot.directory=.sbt -Dsbt.ivy.home=.ivy2 clean compile'
      }
    }
    stage('Test') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        sh '/usr/bin/xvfb-run sbt -Dsbt.log.noformat=true -Dsbt.global.base=.sbt -Dsbt.boot.directory=.sbt -Dsbt.ivy.home=.ivy2 test'
      }
    }
    stage('Document') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        sh 'sbt -Dsbt.log.noformat=true -Dsbt.global.base=.sbt -Dsbt.boot.directory=.sbt -Dsbt.ivy.home=.ivy2 paradox'
      }
    }
    stage('Archive') {
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
        archiveArtifacts artifacts: 'target/paradox/site/main/**', fingerprint: true
      }
    }
    stage('Release') {
      when {
        expression { env.BRANCH_NAME.matches("v(\\d+)\\.(\\d+)") } // is a version
      }
      steps {
	echo "My branch is: ${env.BRANCH_NAME}"
	// Should check if already published though
        sh 'bash extras/packager/build.sh'
        // archiveArtifacts artifacts: 'target/paradox/site/main/**', fingerprint: true
      }
    }
  }
}
