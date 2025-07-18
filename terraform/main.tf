module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anthony.onyeneke+shared@qucoon.com"
    AccountName               = "shared"
    ManagedOrganizationalUnit = "ou-5lim-3q405nzf"
    SSOUserEmail              = "anthony.onyeneke+shared@qucoon.com"
    SSOUserFirstName          = "Testing"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "Tester" = "Anthony Onyeneke"
    "Environment" = "Testing"
    "Organizational Unit" = "Infrastructure"  
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "shared"
}
