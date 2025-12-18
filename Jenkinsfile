pipeline {
    agent any
    environment {

    PATH = "C:\\WINDOWS\\SYSTEM32;%PATH%"

}

    stages {
        stage('Set-up') {
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
