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
                sh 'echo this is test'
            }
        }
        stage('Apply') {
            steps {
                sh 'echo this is deploy'
            }
        }
    }
    post {
        always{
            sh 'echo this job run always'
            #deleteDir()
        }
        success {
            sh 'echo this is only job is success'
        }
        failure {
            sh 'echo this is only failure'
        }
    }
}