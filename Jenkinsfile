pipeline {
  agent any
  
  stages {
    stage('Install dependencies') { // The description of this build stage
      steps { // The commands of this build stage
        sh 'npm install'
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
}