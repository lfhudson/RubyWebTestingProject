
pipeline {
    agent any

    stages {
        stage('Set-up') {
            environment {
                    PATH+RUBY = 'C:\\Ruby33-x64\\bin'
                    }
            steps {
                bat 'ruby -v'
                bat 'gem -v'
                bat 'gem install bundler'
                bat 'bundle -v'
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
