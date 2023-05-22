// pipeline {
//     agent any
//     tools {
//        terraform 'terraform_1'
//     }
//     stages {
//         stage('Git checkout') {
//            steps{
//                 git branch: 'main', credentialsId: 'Github', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
//             }
//         }
//         stage('terraform init') {
//             steps{
//                  bat 'dir /B terraform init'
//             }
//         }
//         stage('terraform plan') {
//             steps{
//                 bat 'dir /B terraform plan'
//             }
//         }
//         stage('terraform apply') {
//             steps{
//                  bat 'dir /B terraform apply -auto-approve'
//             }
//         }
//     }

    
// }

pipeline {
    agent any
    
     environment {
    AWS_REGION = 'us-west-2'
  }
    
    stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
            }
        }
        stage('Initialize') {
            steps {
                bat 'terraform init'
            }
        }
        
        stage('Plan') {
            steps {
                bat 'terraform plan'
            }
        }
        
        stage('Apply') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
        
//         stage('Destroy') {
//             steps {
//                 bat 'terraform destroy'
//             }
//         }
    }
}


