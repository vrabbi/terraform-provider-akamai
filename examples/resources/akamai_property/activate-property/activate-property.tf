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

resource "akamai_property_activation" "activation" {
  property_id = "prp_1"
  contact     = ["you@example.com"]
  version     = 1
}
