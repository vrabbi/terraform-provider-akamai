# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_eval_rule_action" "test" {
  config_id          = 43253
  security_policy_id = "AAAA_81230"
  rule_id            = 699989
  rule_action        = "none"
}

