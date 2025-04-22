pipeline {
    agent any
    environment {
        BRANCH_NAME = "${env.BRANCH_NAME}"
    }
    stages {
        stage('Run Deployment Script') {
            steps {
                echo "Triggered by merge to branch: ${env.BRANCH_NAME}"
                sh './deploy.sh'
            }
        }
    }
}
