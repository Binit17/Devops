pipeline {
    agent any

    environment {
        PROJECT_DIR = "Devops"
    }

    stages {
        stage('Checkout SCM') {
            steps {
                git credentialsId: 'github-credentials', url: 'https://github.com/Binit17/Devops.git', branch: 'main'
            }
        }

        stage('Build Containers') {
            steps {
                script {
                    sh 'docker build -t backend-app ./backend'
                    sh 'docker build -t frontend-app ./frontend'
                    sh 'docker build -t database-app ./database'
                }
            }
        }

        stage('Run Containers') {
            steps {
                script {
                    sh 'docker-compose down'
                    sh 'docker-compose up -d'
                }
            }
        }

        stage('Verify App is Running') {
            steps {
                script {
                    sh 'docker ps'
                    sh 'curl -I http://localhost || echo "App not reachable"'
                }
            }
        }
    }
}
