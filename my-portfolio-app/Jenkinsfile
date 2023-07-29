pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'ng build --prod'
                // Build the Docker image for your Angular application
                sh 'docker build -t my-portfolio-app .'
            }
        }
        stage('Deploy') {
            environment {
                DOCKER_HOST = 'tcp://192.168.65.4:2377'
            }
            steps {
                sh 'docker login -u lavanyas1999 -p lavanya99'
                sh 'docker stack deploy -c docker-compose.yml my-portfolio-app'
            }
        }
    }
}
