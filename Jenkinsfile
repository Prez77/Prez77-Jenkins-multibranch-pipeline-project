pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('PR Approval Check') {
            steps {
                script {
                    def prStatus = sh(script: '''
                        curl -H "Authorization: token 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
" \
                        https://api.github.com/repos/Prez77/Jenkins-multibranch-pipeline-project/pulls/${env.CHANGE_ID} | \
                        jq -r '.state'
                    ''', returnStdout: true).trim()

                    if (prStatus != 'closed') {
                        error "Pull request is not approved/merged yet!"
                    }
                }
            }
        }

        stage('Build') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
