pipeline {
  agent {
    docker {
      image 'node:14'
    }
  }
  stages {
    stage('Install dependencies and Truffle') {
      steps {
        sh 'npm install'
        sh 'npm install -g truffle'
      }
    }
    stage('Build') {
      steps {
        sh 'truffle compile'
      }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'truffle deploy --network mainnet'
      }
    }
  }
  post {
    always {
      deleteDir() // clean up workspace
    }
  }
}