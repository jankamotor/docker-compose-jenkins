pipeline {
    agent none

    stages {
        stage('Verify Tooling...') {
            agent {
                label 'docker_host'
            }
            steps {
                
                sh '''
                    docker version
                    docker info
                    docker compose version
                   '''
            }
        }
        stage('Start Container...') {
            agent {
                label 'docker_host'
            }
            steps {
                sh 'docker compose build'
                sh 'docker compose up -d --no-color --wait'
                sh 'docker compose ps'
            }
        }
        stage('Run Test against the container...') {
            agent {
                label 'docker_host'
            }
            steps {
                
                sh 'docker compose up -d --no-color --wait'
                sh 'docker compose ps Container is running'
        }   }
    }
}