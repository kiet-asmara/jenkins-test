pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build & Dockerize') {
            steps {
                script{
                    docker.build("first-go-app")
                }
            }
        }
        stage('Push to Docker Hub') {
            steps {
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_id') {
                        docker.image("kipas/first-go-app").push()
                    }
                }
            }
        }
    }
}