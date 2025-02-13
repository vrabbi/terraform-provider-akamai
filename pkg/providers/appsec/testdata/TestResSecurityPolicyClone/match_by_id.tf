# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_security_policy_clone" "test" {
  config_id = 43253
  version   = 15

  create_from_security_policy_id = "LNPD_76189"
  security_policy_name           = "Cloned Test for Launchpad 15"
  security_policy_prefix         = "LN"
}

