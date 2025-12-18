pipeline {
    agent any

    stages {
        stage('Set-up') {
            steps {
                bat 'gem install bundler'
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
