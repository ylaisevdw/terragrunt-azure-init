terraform {
  source = "./terraform"
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()
    optional_var_files = ["${get_terragrunt_dir()}/variables/common.tfvars"]
  }
}
