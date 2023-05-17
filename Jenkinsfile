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
                 bat 'start /B terraform init'
            }
        }
        stage('terraform plan') {
            steps{
                bat 'start /B terraform plan'
            }
        }
//         stage('terraform apply') {
//             steps{
//                 sh 'terraform apply --auto-approve'
//             }
//         }
    }

    
}

