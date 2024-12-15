module "ec2" {
  source = "./modules/ec2"
  security_group_id = module.security_group.sg_ec2_id
  subnet_id = data.terraform_remote_state.network.outputs.subnet_id

}
module "security_group" {
  source = "./modules/security_group"
  vpc_id =  data.terraform_remote_state.network.outputs.vpc_id
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "sab-terraform-project-remote-state"
    key = "vpc/terraform.tfstate"
    region = "eu-central-1"
  }
  
}