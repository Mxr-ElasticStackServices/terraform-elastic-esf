# child/terragrunt.hcl

include {
  path = find_in_parent_folders()  # This finds the nearest parent terragrunt.hcl
}

terraform {
  source = "../../."
}



inputs = {
  lambda-name = "my-esf-lambda"
  release-version = "lambda-v1.19.0"
  aws_region = "us-east-1"
  tags = {
    CostCenter  = "M210"
    Project     = "P2020"
    Contact     = "DL-IT-ElasticStackServices@digitalglobe.com"
    Environment = "dg-commercial-dev-01"
    Department  = "IT"
    Service     = "elastic-aws-forwarder"
    Team        = "ess"
    Customer    = "ess"
    Component   = "esf"
    GitRepo     = "terraform-elastic-esf"
    GitOrg      = "Mxr-ElasticStackServices"
    RunTime     = "24_7"
  }
}
