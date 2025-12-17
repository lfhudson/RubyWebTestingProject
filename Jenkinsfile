pipeline {
    agent any

    stages {
        stage('Set-up') {
            steps {
                sh 'bundle install'
            }
        }
        stage('Test') {
            steps {
                sh 'cucumber --format html --out report.html'
                sh 'cucumber --format json --out report.json'
            }
        }
        }
    }
}
