pipeline {
    agent any
    stages {
       stage('--docker-build--') {
          steps {
            sh 'docker build -t alwinthomas/app-frontend .'
          }
        }
       stage('--docker-publish--') {
          steps {
              withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
              sh 'docker push alwinthomas/app-frontend:latest'
              }
          }
        }
       stage('--ssh--') {
          steps {
            	sh "ssh -T -i /home/jenkins/front-end.pem ubuntu@ec2-3-10-227-78.eu-west-2.compute.amazonaws.com ./front-end-install.sh;./front-end-selenium.sh"
            }
        }
        
   }
 }
