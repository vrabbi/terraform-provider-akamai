# Copyright (c) HashiCorp, Inc.

terraform {
  required_version = ">= 1.0"
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = ">= 2.0.0"
    }
  }
}

provider "akamai" {}

data "akamai_property_rules" "rules" {
  property_id = "prp_1"
}

output "json" {
  value = data.akamai_property_rules.rules
}
