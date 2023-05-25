pipeline {
    agent any

    stages {
          stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github',  url: 'https://github.com/Akp-108/terraform-jenkins.git'
            }
        }
          stage('Initialize') {
              steps{
              bat 'terraform init -reconfigure -backend-config="access_key=AKIAZ3CUIHQKPMVTXQ5Y" -backend-config="secret_key=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"'
                }
        }
        
          stage('Plan') {
              steps{
               bat 'terraform plan'
                }
        }
        
        stage('Apply') {
            steps{
               bat 'terraform destroy -auto-approve'
            }
        }
        }

}
