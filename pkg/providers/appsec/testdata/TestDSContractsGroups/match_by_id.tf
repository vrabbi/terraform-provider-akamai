# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_appsec_contracts_groups" "test" {
}

