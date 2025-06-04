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
}
