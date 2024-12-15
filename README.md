# Terraform VPC Project

### Diagram of the project

![](diagram.PNG)

## Overview

This Terraform-AWS project utilizes Terraform scripts to create and configure an AWS VPC network that includes two public subnets, and several AWS EC2 instances in the mentioned VPC subnets, using an AWS S3 bucket to refer to the same Terraform Remote State file that is stored on it, for their configurations. This process is done in order to simulate a case where several developers are working on a project together, instead of one developer operating on one singel file that contains all the variables needed.


## Project components

- Terraform
- AWS VPC
- AWS EC2
- AWS S3

### Terraform

Terraform is used to create, configure and manage the AWS resources in a flexible manner. 

### AWS VPC Network

AWS VPC is used to create a VPC network that contains two subnets on two availability zones, each one containing an EC2 instance.

### AWS EC2 Instances

AWS EC2 is used to create two instances, having them each assigned to a separate subnet on a different availability zone, in the same region.

### AWS S3 Bucket

AWS S3 bucket is used in this projec to host the Terraform remote state files that both the VPC resource and the EC2 resource back-up and rely on.



## Setup and Deployment:

### Prerequisites

- AWS Account with access to EC2, VPC, and S3
- Git installed and configured
- Terraform installed
- awscli configured

### Clone the Repository

First, clone the git repository to your local machine and navigate to the relevant folder:

```
git clone https://github.com/sabkorm/Terraform_VPC_Project.git
cd Terraform_VPC_Project
```

### Terraform Initialization and Application

Once in the cloned repository directory, change the AWS S3 bucket name and region to an already existing S3 bucket, inside the following files:
- network_terraform_project/main.tf
- network_terraform_project/remote_state.tf
- server_terraform_project/remote_state.tf

After changing the relevant variable names, run the following commands in both folders, first inside the *network_terraform_project* folder and then the *server_terraform_project* folder:

```
terraform init
terraform apply
```

After running these commands, Terraform would create the resources specified; One VPC network with two subnets, with one EC2 instance in each.