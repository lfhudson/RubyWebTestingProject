    environment {

    PATH = "C:\\WINDOWS\\SYSTEM32;%PATH%"

}

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
                sh 'cucumber --format pretty --format json --out report.json'
            }
        }

        stage('Report') {
            steps {
                cucumber buildStatus: 'UNSTABLE',
                         fileIncludePattern: 'report.json',
                         sortingMethod: 'ALPHABETICAL'
            }
        }
    }
}
