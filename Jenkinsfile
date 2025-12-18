
pipeline {
    agent any

    stages {
        stage('Set-up') {
            steps {
                environment {
                    PATH = "C:\\WINDOWS\\SYSTEM32;%PATH%"
                    }
                bat 'bundle install'
            }
        }
        stage('Test') {
            steps {
                bat 'cucumber --format json --out report.json'
            }
        }
    }
}
