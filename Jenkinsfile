pipeline {
    tool name: 'terraform_1', type: 'terraform'
    agent any

    stages {
        stage('Checkout') {
            steps {
               git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins'
            }
        }
        stage('Terraform init') {
            steps {
               sh 'terraform init'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
    }
}
