pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning repository'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t flask_demo:latest .'
            }
        }

        stage('Run Container') {
            steps {
                echo 'Running Docker container'
                sh '''
                  docker stop flask_app || true
                  docker rm flask_app || true
                  docker run -d --name flask_app -p 5000:5000 flask_demo:latest
                '''
            }
        }
    }
}
