
pipeline {
    agent any

    stages {
        stage('Set-up') {
            environment {
                    PATH = "C:\\WINDOWS\\SYSTEM32"
                    PATH+RUBY = 'C:\\Ruby33-x64\\bin'
                    }
            steps {
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
