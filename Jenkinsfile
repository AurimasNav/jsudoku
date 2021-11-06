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
                sh 'echo $HOME'
                sh 'git --version'
                sh 'ant -version'
            }
        }
        stage('Build') {
            steps {
                //not calling any cleanup tasks with ant since this is running on ephemeral build agent
                sh 'ant'
            }
        }
        stage('Report') {
            steps {
                //publish checkstyle report
                recordIssues enabledForFailure: true, tool: checkStyle()
            }
        }
        stage('Deploy') {
            when {
                branch 'main'
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
