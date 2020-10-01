# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "eu-west-1"
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_ACCESS_KEY"
}
