pipeline {
  agent {
    docker {
      image 'loliman/cypress:1.0'
    }
  }

  stages {
    environment {
      CYPRESS_CACHE_FOLDER = '/root/.cache/Cypress'
    }

    stage('cypress parallel tests') {
      parallel {
        stage('tester A') {
          steps {
            echo "Running build ${env.BUILD_ID} on A"
            sh "npm run cy:run"
          }
        }

        stage('tester B') {
          steps {
            echo "Running build ${env.BUILD_ID} on B"
            sh "npm run cy:run"
          }
        }
      }
    }
  }
}