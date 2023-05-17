pipeline {
    agent any
    tools {
       terraform 'terraform_1'
    }
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
            }
        }
        stage('terraform init') {
            steps{
                 bat 'dir /B terraform init'
            }
        }
        stage('terraform plan') {
            steps{
                bat 'dir /B terraform plan'
            }
        }
        stage('terraform apply') {
            steps{
                 bat 'dir /B terraform apply -auto-approve'
            }
        }
    }

    
}

