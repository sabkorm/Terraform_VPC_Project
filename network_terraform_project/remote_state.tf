terraform {
  backend "s3" {
    bucket = "sab-terraform-project-remote-state"
    key = "vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}