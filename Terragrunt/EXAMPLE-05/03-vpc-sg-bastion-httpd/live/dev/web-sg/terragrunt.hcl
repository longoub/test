
terraform {
  source = "../../../terraform-library/web-sg/"
}

# Required for ordering blocks using apply-all, destroy-all etc
dependencies {
  paths = [
    "${get_terragrunt_dir()}/../vpc", 
    "${get_terragrunt_dir()}/../bastion-sg", 
    "${get_terragrunt_dir()}/../elb-sg"
    ]
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

