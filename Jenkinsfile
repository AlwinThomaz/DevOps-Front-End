pipeline {
    agent any
    stages {
       stage('--docker-build--') {
          steps {
            sh 'docker build -t alwinthomas/app-frontend-master .'
          }
        }
       stage('--docker-publish--') {
          steps {
              withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
              sh 'docker push alwinthomas/app-frontend-master:latest'
              }
          }
        }
       stage('--ssh test--') {
          steps {
            	sh "ssh -T -i /home/jenkins/front-end.pem ubuntu@ec2-35-177-230-57.eu-west-2.compute.amazonaws.com ./FE-master-main.sh"
            }
        }

        
	stage('--ssh production--') {
          steps {

            	sh "ssh -T -i /home/jenkins/master.pem ubuntu@ec2-18-130-237-85.eu-west-2.compute.amazonaws.com ./FE-Prod.sh"
            }
        }

   }
 }
 