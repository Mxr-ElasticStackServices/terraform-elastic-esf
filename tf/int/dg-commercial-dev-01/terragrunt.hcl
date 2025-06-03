# child/terragrunt.hcl

include {
  path = find_in_parent_folders()  # This finds the nearest parent terragrunt.hcl
}

terraform {
  source = "../../."
}

inputs = {

}