pipeline {
    tools{
        terraform 'terraform_1'
    }
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
