module "roboshop" {
  #source = "../5.9.terraform-aws-vpc-peering"
  source = "git::https://github.com/Lingaiahthammisetti/5.9.terraform-aws-vpc-peering.git?ref=main"
  
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  vpc_cidr = var.vpc_cidr

  # public subnet
  public_subnets_cidr = var.public_subnets_cidr

  # private subnet
  private_subnets_cidr = var.private_subnets_cidr

  # database subnet
  database_subnets_cidr = var.database_subnets_cidr

  #peering
  is_peering_required = var.is_peering_required

}