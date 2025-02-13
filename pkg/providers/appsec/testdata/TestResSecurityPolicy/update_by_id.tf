# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_security_policy" "test" {
  config_id              = 43253
  security_policy_name   = "Cloned Test for Launchpad 21"
  security_policy_prefix = "LN"
}

