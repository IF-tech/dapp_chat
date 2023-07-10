pipeline {
  agent any
  
  stages {
    stage('Checkout SCM') {
      steps {
        checkout scm
      }
    }
    stage('Install dependencies') {
      steps {
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
        bat 'truffle deploy --network mainnet'
      }
    }
  }
}