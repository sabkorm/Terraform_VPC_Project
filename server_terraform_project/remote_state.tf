terraform {
  backend "s3" {
    bucket = "sab-terraform-project-remote-state"
    key = "terraform.tfstate"
    region = "eu-central-1"
  }
}