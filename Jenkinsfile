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
                sh 'cucumber --format json --out report.json'
            }
        }
        stage("Report")
        steps {
        cucumber buildStatus: 'UNCHANGED', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
        }
    }
}
