pipeline {
    agent any
    environment {

    PATH = "C:\\WINDOWS\\SYSTEM32"

}

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
