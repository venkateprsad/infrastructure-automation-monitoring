pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/venkateprsad/infrastructure-automation-monitoring.git'
            }
        }

        stage('Verify Ansible') {
            steps {
                sh 'ansible --version'
                sh 'ansible-inventory -i ansible/inventory.ini --list'
            }
        }

        stage('Test SSH Connectivity') {
            steps {
                sshagent(credentials: ['app-servers-ssh']) {
                    sh '''
                        ansible app_servers \
                        -i ansible/inventory.ini \
                        -m ping
                    '''
                }
            }
        }

        stage('Deploy Application') {
            steps {
                sshagent(credentials: ['app-servers-ssh']) {
                    sh '''
                        ansible-playbook \
                        -i ansible/inventory.ini \
                        ansible/deploy.yml
                    '''
                }
            }
        }

        stage('Verify Deployment') {
            steps {
                sshagent(credentials: ['app-servers-ssh']) {
                    sh '''
                        ansible app_servers \
                        -i ansible/inventory.ini \
                        -m shell \
                        -a "curl -fsS -o /dev/null -w '%{http_code}' http://localhost:8080"
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful on both application servers!'
        }

        failure {
            echo 'Deployment failed. Check Jenkins console output.'
        }
    }
}

