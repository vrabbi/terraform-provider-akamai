# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_botman_content_protection_rule" "test" {
  config_id          = 43253
  security_policy_id = "AAAA_81230"
}
