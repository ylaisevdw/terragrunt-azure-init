include {
  path = find_in_parent_folders()
}

terraform {
  source = "../..//terraform"
  extra_arguments "dev_vars" {
    commands = get_terraform_commands_that_need_vars()
    optional_var_files = ["${get_parent_terragrunt_dir()}/dev.tfvars"]
  }
}
