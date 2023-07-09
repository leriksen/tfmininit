module "globals" {
  source = "../globals"
}

locals {
  env_sub = {
    dev = "NP"
  }

  law_retention = {
    dev = 30 # for perGB2018, 30 is the minimum
  }

  law_quota = {
    dev = 1
  }
}

module "subscription" {
  source = "../subscription"
  subscription = local.env_sub[var.environment]
}



