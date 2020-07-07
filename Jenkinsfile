pipeline {
  agent {
    docker {
      image 'cypress/base:10'
    }
  }

  stages {
    stage('build') {


      steps {
        echo "Running build ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh 'npm config set https-proxy http://10.93.74.95:3128'
        sh 'npm config set proxy http://10.93.74.95:3128'
        sh 'npm config set strict-ssl false'
        sh 'npm i --verbose'
        sh 'npm run cy:verify'
      }
    }

    stage('cypress parallel tests') {
      // https://jenkins.io/doc/book/pipeline/syntax/#parallel
      parallel {
        stage('tester A') {
          steps {
            echo "Running build ${env.BUILD_ID}"
            sh "npm run cy:run"
          }
        }

        stage('tester B') {
          steps {
            echo "Running build ${env.BUILD_ID}"
            sh "npm run cy:run"
          }
        }
      }

    }
  }
}
