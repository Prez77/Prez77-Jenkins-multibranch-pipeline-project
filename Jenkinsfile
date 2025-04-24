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
                        curl -H "Authorization: token YOUR_GITHUB_TOKEN" \
                        https://api.github.com/repos/your_username/your_repo/pulls/${env.CHANGE_ID} | \
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
