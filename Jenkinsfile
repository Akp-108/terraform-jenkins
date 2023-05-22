pipeline {
    agent any
    
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
        }

}
