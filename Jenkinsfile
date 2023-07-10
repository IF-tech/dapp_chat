pipeline {
  agent any
  
  stages {
    stage('Install dependencies') { // The description of this build stage
      steps { // The commands of this build stage
        bat 'npm install'
      }
    }
    stage('Build') {
      steps {
        bat 'truffle compile'
      }
    }
    stage('Test') {
      steps {
        bat 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        bat 'truffle deploy --network development'
      }
    }
  }
}