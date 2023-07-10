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
        script {
          bat '''
            echo truffle develop > truffle_commands
            echo compile >> truffle_commands
            echo migrate --reset >> truffle_commands
            echo .exit >> truffle_commands
            truffle exec truffle_commands
          '''
        }
      }
    }
    stage('Test') {
      steps {
        bat 'npm test'
      }
    }
    stage('Deploy') {
      steps {
        bat 'truffle migrate --network mainnet'
      }
    }
  }
}