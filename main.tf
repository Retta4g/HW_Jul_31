provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source    = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  name       = "my-vpc"
}

module "subnet" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  cidr_block          = "10.0.1.0/24"
  availability_zone   = "us-west-2a"
  map_public_ip_on_launch = true
  name                = "my-subnet"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-074be47313f84fa38"
  instance_type = "t2.micro"
  subnet_id     = module.subnet.subnet_id
  name          = "my-ec2-instance"
}

