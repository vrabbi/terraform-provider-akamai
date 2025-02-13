# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_appsec_reputation_protections" "test" {
  config_id          = 43253
  version            = 7
  security_policy_id = "AAAA_81230"
}

output "appsecwafmode" {
  value = data.akamai_appsec_reputation_protections.test.output_text
}

