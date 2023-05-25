terraform {
  backend "s3" {
    bucket = "jenkins-test-bucket1.0"
    key    = "statefile/terraform.tfstatefile"
    region = "us-east-1"
  }
}
