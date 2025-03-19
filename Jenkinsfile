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
        
        stage('Install Ansible') {
            steps {
                sh '''
                    sudo apt-get update
                    sudo apt-get install -y ansible
                    sudo ansible-galaxy collection install community.docker
                '''
            }
        }
        
        stage('Deploy with Ansible') {
            steps {
                sh '''
                    cd ${WORKSPACE}
                    ansible-playbook ansible/deploy.yml
                '''
            }
        }
    }
}
