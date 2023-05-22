terraform {
  backend "s3" {
    bucket = "jenkins-pipeline-bucket1"
    key    = "statefile/terraform.tfstatefile"
    region = "us-east-1"
  }
}
