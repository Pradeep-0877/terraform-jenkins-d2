// Lets start with Jenkins pipeline
// Declerative 
pipeline {
    agent any 
    stages {
        stage ('init') {
            steps {
                sh "terraform init"
                sh "ls -la ~/"
            }
        }
        stage ('Plan') {
            steps {
                sh "terraform plan"
            }
        }
        stage ('apply') {
            steps {
                sh "terraform apply --auto-approve"
            }
        }
        stage ('destroy') {
            steps {
                sh "terraform destroy --auto-approve"
            }
        }
    }
}