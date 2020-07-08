pipeline {
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