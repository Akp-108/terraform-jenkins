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

// pipeline {
//     agent any
    
//    environment {
//     AWS_REGION = 'us-west-1'
//     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
//     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
//     AWS_SESSION_TOKEN = credentials('AWS_SESSION_TOKEN')   
//   }
    
//     stages {
//           stage('Git checkout') {
//            steps{
//                 git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
//             }
//         }
//           stage('Initialize') {
//               steps{
//               bat 'terraform init'
//                 }
//         }
        
//           stage('Plan') {
//               steps{
//                bat 'terraform plan'
//                 }
//         }
        
//         stage('Apply') {
//             steps{
//                bat 'terraform apply -auto-approve'
//             }
//         }
        
// //         stage('Destroy') {
// //             steps {
// //                 bat 'terraform destroy'
// //             }
// //         }
//     }
// }

// pipeline {
//   agent any

//     environment {
//     AWS_REGION = 'us-west-1'
//     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
//     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
//     AWS_SESSION_TOKEN = credentials('AWS_SESSION_TOKEN')   
//   }

//   stages {
//     stage('Checkout') {
//       steps {
//         // Checkout your source code from version control system (e.g., Git)
//         // For example:
//         // git 'https://github.com/your-repo.git'
//         git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
//       }
//     }

//     stage('Terraform Init') {
//       steps {
//         bat 'terraform init'
//       }
//     }

//     stage('Terraform Plan') {
//       steps {
//         bat 'terraform plan -out=tfplan'
//       }
//     }

//     stage('Terraform Apply') {
//       steps {
//         bat 'terraform apply -auto-approve tfplan'
//       }
//     }

//     stage('Terraform Destroy') {
//       steps {
//         sh 'terraform destroy -auto-approve'
//       }
//     }
//   }
// }

pipeline
    agent any
//     tools {
//         terraform 'terraform-11'
//     }
    
    stages{
        stage('Git Checkout'){
             steps {
        // Checkout your source code from version control system (e.g., Git)
        // For example:
        // git 'https://github.com/your-repo.git'
        git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
      }
        }
       
        stage('Terraform init'){
            steps{
                bat 'terraform init'
            }
        }
        
         stage('Terraform plan'){
            steps{
                bat 'terraform plan'
            }
        }
        stage('Terraform Apply'){
            steps{
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "aws-demo-credentials",
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                bat 'terraform apply -auto-approve'
                }
            }
        }
    }
}



