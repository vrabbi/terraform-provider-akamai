# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_appsec_custom_rules" "test" {
  config_id = 43253

}
output "appseccustomrules" {
  value = data.akamai_appsec_custom_rules.test.output_text
}

