pipeline {
  agent {
    docker {
      image 'loliman/cypress:1.0'
    }
  }

  stages {
    stage('cypress parallel tests') {
      environment {
        CYPRESS_CACHE_FOLDER = '/root/.cache/Cypress'
      }
      
      parallel {
        stage('Stage A') {
          steps {
            echo "Running build ${env.BUILD_ID} on stage A"
            sh "npm run cy:run"
          }
        }

        stage('Stage B') {
          steps {
            echo "Running build ${env.BUILD_ID} on stage B"
            sh "npm run cy:run"
          }
        }
      }
    }
  }
}