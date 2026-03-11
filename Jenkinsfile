pipeline {
    agent {
       label 'AGENT-1' 
    }
    options {
        timeout(time: 1, unit: 'HOURS') 
        disableConcurrentBuilds()
    }

    environment { 
        Name = 'Rabbani'
    }

    stages {
        stage('Init') {
            steps {
                sh """
                    ls -ltr
                """
            }
        }
        stage('Test') {
            steps {
                sh 'echo this is test'
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo this is deploy'
            }
        }
        stage('Trigger') {
            steps {
                sh 'echo this is triger'
            }
        }
    }
    post {
        always{
            sh 'echo this job run always'
        }
        success {
            sh 'echo this is only job is success'
        }
        failure {
            sh 'echo this is only failure'
        }
    }
}