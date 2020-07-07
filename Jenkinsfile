pipeline {
  agent {
    docker {
      image 'cypress/base:10.0.0'
    }
  }
  
  stages {
    stage('build') {
      environment {
        HOME = "."
      }
      steps {
        echo "Running build ${env.BUILD_ID} on ${env.JENKINS_URL}"
        timeout(time: 5, unit: 'MINUTES') {
          nodejs(nodeJSInstallationName: 'Node 10.4.1', configId: 'npm') {
            sh 'npm ci'
            sh 'npm run cy:verify'
          }
        }
      }
    }
  }
}
