// Lets start with Jenkins pipeline
// Declerative 
pipeline {
    agent any 
    parameters {
        choice (
            name: 'action',
            choices: 'no\napply\ndestroy',
            description: "Apply and destory the application Infrastructure"
        )
    }
    stages {
        stage ('init') {
            when {
                expression {
                    params.action == 'apply'
                } 
            }
            steps {
                sh "terraform init"
                sh "ls -la ~/"
            }
        }
        stage ('Plan') {
            when {
                expression {
                    params.action == 'apply'
                }
            }
            steps {
                sh "terraform plan"
            }
        }
        stage ('apply') {
            when {
                expression {
                    params.action == 'apply'
                }
            }
            steps {
                sh "terraform apply --auto-approve"
            }
        }
        stage ('destroy') {
            when {
                expression {
                    params.action == 'destroy'
                }
            }
            steps {
                sh "terraform destroy --auto-approve"
            }
        }
    }
}