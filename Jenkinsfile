pipeline {
    agent any

    environment {
        DOCKER_IMAGE_BACKEND = "binit17/backend"
        DOCKER_IMAGE_FRONTEND = "binit17/frontend"
        DOCKER_IMAGE_DATABASE = "binit17/database"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git credentialsId: 'github-credentials', url: 'https://github.com/Binit17/Devops.git', branch: 'main'
            }
        }

        stage('Build Docker Images') {
            steps {
                script {
                    sh 'docker build -t $DOCKER_IMAGE_BACKEND ./backend'
                    sh 'docker build -t $DOCKER_IMAGE_FRONTEND ./frontend'
                    sh 'docker build -t $DOCKER_IMAGE_DATABASE ./database'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub', url: '']) {
                    sh 'docker push $DOCKER_IMAGE_BACKEND'
                    sh 'docker push $DOCKER_IMAGE_FRONTEND'
                    sh 'docker push $DOCKER_IMAGE_DATABASE'
                }
            }
        }

        stage('Deploy Containers') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up -d'
            }
        }
    }
}
