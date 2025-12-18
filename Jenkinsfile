
pipeline {
    agent any

    stages {
        stage('Set-up') {
            steps {
                environment {
                    PATH = "C:\\WINDOWS\\SYSTEM32;C:\Ruby34-x64\bin"
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
