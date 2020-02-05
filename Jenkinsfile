pipeline {
    agent any
    stages {
            stage('--Build front-end--') {
                steps {
                    sh "docker build -t app-front ."
                    }
            }
        stage('--Deploy--') {
              steps {
                    sh "docker login -u ${env.DOCKER_USER} -p ${env.DOCKER_PSSWRD}"
                    sh "docker tag app-test alwinthomas/app-front"
                    sh "docker push alwinthomas/app-front"
                    }
              }
    }
}