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
        
        stage('Deploy with Ansible') {
            steps {
                ansiblePlaybook(
                    playbook: "${WORKSPACE}/ansible/deploy.yml",
                    inventory: "${WORKSPACE}/ansible/inventory.ini",
                    colorized: true
                )
            }
        }
    }
}
