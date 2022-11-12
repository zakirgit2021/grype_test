pipeline {
  agent any
  stages {
  
  stage('Delete image with the smae name if exists') {
      steps {
        sh '''
          docker rmi grype-test:latest
        '''
      }
    }
    stage('Create image') {
      steps {
        sh 'docker build --tag grype-test:latest .'
      }
    }
    stage('Scan the Image ') {
      steps {
        sh 'grype grype-test:latest --scope  --fail-on=critical'
      }
    }
    stage('Confimtion print ') {
      steps {
        echo 'if I made it here, no critical items were found'
      }
    }
  }
}
