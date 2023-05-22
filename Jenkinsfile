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
    AWS_REGION = 'us-east-1'
  }
    
    stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
            }
        }
          stage('Initialize') {
            steps {
                withAWS(credentials: 'aws-demo-credentials', region: 'us-east-1') {
//                 awsAccessKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_ACCESS_KEY_ID'),
//                 awsSecretKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_SECRET_ACCESS_KEY')
                bat 'terraform init'
                }
            }
        }
        
         stage('Plan') {
            steps {
               withAWS(credentials: 'aws-demo-credentials', region: 'us-east-1') {
//                 awsAccessKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_ACCESS_KEY_ID'),
//                 awsSecretKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_SECRET_ACCESS_KEY')
                bat 'terraform plan'
                }
            }
        }
        
        stage('Apply') {
            steps{
            withAWS(credentials: 'aws-demo-credentials', region: 'us-east-1') {
//                 awsAccessKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_ACCESS_KEY_ID'),
//                 awsSecretKey(credentialsId: 'aws-demo-credentials', variable: 'AWS_SECRET_ACCESS_KEY')
                bat 'terraform apply -auto-approve'
                }
            }
        }
        
//         stage('Destroy') {
//             steps {
//                 bat 'terraform destroy'
//             }
//         }
    }
}


