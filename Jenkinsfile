pipeline {
    agent any
    stages {
            stage('--Build front-end--') {
                steps {
                    sh "docker build -t app-test-front-v2 ."
                    }
            }
        stage('--Deploy--') {
              steps {
                    sh "docker login -u ${env.DOCKER_USER} -p ${env.DOCKER_PSSWRD}"
                    sh "docker tag app-test alwinthomas/app-test-front-v2"
                    sh "docker push alwinthomas/app-test-front-v2"
                    }
              }
    }
}