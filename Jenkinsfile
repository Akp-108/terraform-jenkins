// // pipeline {
// //     agent any
// //     tools {
// //        terraform 'terraform_1'
// //     }
// //     stages {
// //         stage('Git checkout') {
// //            steps{
// //                 git branch: 'main', credentialsId: 'Github', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
// //             }
// //         }
// //         stage('terraform init') {
// //             steps{
// //                  bat 'dir /B terraform init'
// //             }
// //         }
// //         stage('terraform plan') {
// //             steps{
// //                 bat 'dir /B terraform plan'
// //             }
// //         }
// //         stage('terraform apply') {
// //             steps{
// //                  bat 'dir /B terraform apply -auto-approve'
// //             }
// //         }
// //     }

    
// // }

pipeline {
    agent any
    
// //    environment {
// //     AWS_REGION = 'us-west-1'
// //     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
// //     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
// //     AWS_SESSION_TOKEN = credentials('AWS_SESSION_TOKEN')   
// //   }
    
    stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', url: 'https://github.com/Akp-108/terraform-jenkins.git'
            }
        }
          stage('Initialize') {
              steps{
              bat 'terraform init'
                }
        }
        
          stage('Plan') {
              steps{
               bat 'terraform plan'
                }
        }
        
        stage('Apply') {
            steps{
               bat 'terraform apply -auto-approve'
            }
        }
        
// // //         stage('Destroy') {
// // //             steps {
// // //                 bat 'terraform destroy'
// // //             }
// // //         }
// //     }
// // }

// // pipeline {
// //   agent any

// //     environment {
// //     AWS_REGION = 'us-west-1'
// //     AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
// //     AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
// //     AWS_SESSION_TOKEN = credentials('AWS_SESSION_TOKEN')   
// //   }

// //   stages {
// //     stage('Checkout') {
// //       steps {
// //         // Checkout your source code from version control system (e.g., Git)
// //         // For example:
// //         // git 'https://github.com/your-repo.git'
// //         git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
// //       }
// //     }

// //     stage('Terraform Init') {
// //       steps {
// //         bat 'terraform init'
// //       }
// //     }

// //     stage('Terraform Plan') {
// //       steps {
// //         bat 'terraform plan -out=tfplan'
// //       }
// //     }

// //     stage('Terraform Apply') {
// //       steps {
// //         bat 'terraform apply -auto-approve tfplan'
// //       }
// //     }

// //     stage('Terraform Destroy') {
// //       steps {
// //         sh 'terraform destroy -auto-approve'
// //       }
// //     }
// //   }
// // }

// // pipeline {
// //     agent any
// // //     tools {
// // //         terraform 'terraform-11'
// // //     }
// //      environment {
// //     AWS_REGION = 'us-west-1'
// //     AWS_ACCESS_KEY_ID = credentials('aws-demo-credentials')
// //     AWS_SECRET_ACCESS_KEY = credentials('aws-demo-credentials')
// //      sessionTokenVariable: 'AWS_SESSION_TOKEN', 
// //   }
    
// //     stages{
// //         stage('Git Checkout'){
// //              steps {
// //         // Checkout your source code from version control system (e.g., Git)
// //         // For example:
// //         // git 'https://github.com/your-repo.git'
// //         git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
// //       }
// //         }
       
// //         stage('Terraform init'){
// //             steps{
// //                 bat 'terraform init'
// //             }
// //         }
        
// //          stage('Terraform plan'){
// //             steps{
// //                 bat 'terraform plan'
// //             }
// //         }
// //         stage('Terraform Apply'){
// //             steps{
                
// //                 bat 'terraform apply -auto-approve'
                
// //             }
// //         }
// //     }
// // }


// // pipeline {
// //     agent any
    
// //     environment {
// //         AWS_REGION = 'us-west-1'  // Optionally, set the AWS region
// //     }
    
// //     stages {
// //          stage('Git Checkout'){
// //              steps {
// //         // Checkout your source code from version control system (e.g., Git)
// //         // For example:
// //         // git 'https://github.com/your-repo.git'
// //         git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
// //        }
// //         }
// //         stage('terraform commands') {
// //             steps {
// //                 withCredentials([[
// //                     $class: 'AmazonWebServicesCredentialsBinding',
// //                     accessKeyVariable: 'AWS_ACCESS_KEY_ID',
// //                     secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
// //                     credentialsId: 'aws-demo-credentials'
// //                 ]]) {
// //                     // Your pipeline steps that require AWS credentials
// //         stage('Terraform init') {
// //             steps {
// //                 // Generate an execution plan for Terraform
// //                 bat 'terraform init'
// //             }
// //         }
        
// //         stage('Terraform Plan') {
// //             steps {
// //                 // Generate an execution plan for Terraform
// //                 bat 'terraform plan'
// //             }
// //         }
        
// //         stage('Terraform Apply') {
// //             steps {
// //                 // Apply the changes defined in your Terraform configuration
// //                 bat 'terraform apply -auto-approve'
// //             }
// //         }
// //                 }
// //             }
// //         }
// //     }
// // }

// pipeline {
//     agent any
    
//     environment {
//         AWS_REGION = 'us-west-1'  // Optionally, set the AWS region
//     }

//     stages {
//             stage('Git Checkout'){
//              steps {
//         // Checkout your source code from version control system (e.g., Git)
//         // For example:
//         // git 'https://github.com/your-repo.git'
//         git branch: 'main', url: 'https://github.com/raavimanikanta/terraform-jenkins.git'
//        }
//         }
        
//         stage('AWS Credentials Setup') {
//             steps {
//                 // Retrieve AWS credentials from Jenkins credentials store
//                 withCredentials([[
//                     $class: 'AmazonWebServicesCredentialsBinding',
//                     accessKeyVariable: 'AWS_ACCESS_KEY_ID',
//                     secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
//                     credentialsId: 'aws-demo-credentials'
//                 ]]) {
//                     // Configure AWS CLI with the retrieved credentials
//                     bat 'aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID'
//                     bat 'aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY'
//                     bat 'aws configure set region $AWS_REGION'
//                 }
//             }
//         }
        
//         stage('Terraform Init') {
//             steps {
//                 // Initialize Terraform in the project directory
//                 bat 'terraform init'
//             }
//         }
        
//         stage('Terraform Plan') {
//             steps {
//                 // Generate an execution plan for Terraform
//                 bat 'terraform plan'
//             }
//         }
        
//         stage('Terraform Apply') {
//             steps {
//                 // Apply the changes defined in your Terraform configuration
//                 bat 'terraform apply -auto-approve'
//             }
//         }
        
       
//     }
// }









