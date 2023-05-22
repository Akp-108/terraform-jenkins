pipeline {
 agent any
     stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Akp-108/terraform-jenkins.git'
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

//         stage('Destroy') {
//             steps {
//                 bat 'terraform destroy'
//             }
//         }
    }
}
