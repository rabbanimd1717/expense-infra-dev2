pipeline {
    agent {
       label 'AGENT-1' 
    }
    options {
        timeout(time: 1, unit: 'HOURS') 
        disableConcurrentBuilds()
        ansiColor('xterm')
    }

    environment { 
        Name = 'Rabbani'
    }

    stages {
        stage('Init') {
            steps {
                sh """
                    ls -ltr
                    cd 01-vpc
                    terraform init -reconfigure
                """
            }
        }
        stage('Plan') {
            steps {
                sh """
                    cd 01-vpc
                    ls -ltr
                """
            }
        }
        stage('Deploy') {
            input{
                    message "Should we continue?"
                    ok "Yes, we should."
                }
            steps {
                
                sh """
                    cd 01-vpc
                """
            }
        }
    }
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success { 
            echo 'I will run when pipeline is success'
        }
        failure { 
            echo 'I will run when pipeline is failure'
        }
    }
}