pipeline {
    agent {
        label 'ant'
    }
    options {
        //configure timeout for pipeline
        timeout(time: 15, unit: 'MINUTES')
    }
    stages {
        stage('Info') {
            steps {
                echo '$HOME'
                sh 'git --version'
                sh 'ant -version'
            }
        }
        stage('Build') {
            steps {
                //placeholder for build actions if required
                sh 'ant build'
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
