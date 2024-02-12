// Lets start with Jenkins pipeline
// Declerative 
pipeline {
    agent any 
    stages {
        stage ('init') {
            steps {
                sh "terraform init"
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
    }
}