
pipeline {
    agent any

    stages {
        stage('Set-up') {
            environment {
                    PATH = "C:\\WINDOWS\\SYSTEM32"
                    }
            steps {
                bat 'echo %PATH%'
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
