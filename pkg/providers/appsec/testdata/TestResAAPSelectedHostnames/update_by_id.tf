# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_aap_selected_hostnames" "test" {
  config_id          = 43253
  security_policy_id = "AAAA_81230"
  protected_hosts    = ["test.sandbox.akamaideveloper.com"]
  evaluated_hosts    = ["test.evaluated.sandbox.akamaideveloper.com"]
}
