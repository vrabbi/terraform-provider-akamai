# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_configuration_version_clone" "test" {
  config_id           = 43253
  create_from_version = 7
  rule_update         = false
}

