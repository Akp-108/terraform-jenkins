pipeline {
    agent any
environment {
   AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
   AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
}
    stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github',  url: 'https://github.com/Akp-108/terraform-jenkins.git'
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
               bat 'terraform $action -auto-approve'
            }
        }
        }

}
