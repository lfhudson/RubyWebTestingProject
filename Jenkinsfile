pipeline {
    agent any

    stages {
        // stage('Set-up') {
        //     steps {
        //         // bat 'cd RubyWebTestingProject'
        //         // bat 'bundle install'
        //     }
        // }
        stage('Test') {
            steps {
                bat 'cucumber -p ci'
                cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'logs', sortingMethod: 'ALPHABETICAL'
            }
        }
    }
}
