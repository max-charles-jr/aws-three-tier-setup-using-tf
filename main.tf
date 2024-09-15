terraform {
  cloud {

    organization = "max-charles-jr"

    workspaces {
      name = "aws-three-tier-setup-demo"
    }
  }
}

module "alb" {
  source = "./modules/alb"
}

module "asg" {
  source = "./modules/asg"
}

module "ec2" {
  source = "./modules/ec2"
}

module "rds" {
  source = "./modules/rds"
}
