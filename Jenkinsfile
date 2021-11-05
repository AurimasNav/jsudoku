pipeline {
    agent {
        label 'agent'
    }
    options {
        //configure timeout for pipeline
        timeout(time: 15, unit: 'MINUTES')
    }
    stages {
        stage('Build') {
            steps {
                //placeholder for build actions if required
                ehco 'build stage'
            }
        }
        stage('Test') {
            steps {
                echo 'test stage'
            }
        }
        stage('Deploy') {
            when {
                branch 'production'
            }
            steps {
                echo 'deploy something when running on production branch'
            }
        }
    }
    post {
        success {
            echo 'post job when success'
        }
    }
}
