pipeline {
    agent {
       label 'AGENT-1' 
    }
    options {
        timeout(time: 1, unit: 'HOURS') 
        disableConcurrentBuilds()
        ansiColor('xterm')
    }

    parameters {
        

        choice(name: 'ACTION', choices: ['Apply', 'Destroy'], description: 'Pick something')

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
            when {
                expression {
                    params.ACTION == 'Apply'
                }
            }
            steps {
                sh """
                    cd 01-vpc
                    terraform plan
                """
            }
        }
        stage('Deploy') {
            when {
                expression {
                    params.ACTION == 'Apply'
                }
            input{
                    message "Should we continue?"
                    ok "Yes, we should."
                }
            steps {
                
                sh """
                    cd 01-vpc
                    terraform apply -auto-approve
                """
            }
        }
        stage('Destroy') {
            when {
                expression {
                    params.ACTION == 'Destroy'
                }
           
            steps {
                
                sh """
                    cd 01-vpc
                    terraform destroy -auto-approve
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