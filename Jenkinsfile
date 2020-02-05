pipeline {
    agent any
    stages {
       stage('--docker-build--') {
          steps {
            sh 'docker build -t alwinthomas/credential .'
          }
        }
        stage('--docker-publish--') {
          steps {
              withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
              sh 'docker push alwinthomas/credential:latest'
              }
          }
        }