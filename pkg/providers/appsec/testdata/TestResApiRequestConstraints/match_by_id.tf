# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_api_request_constraints" "test" {
  config_id          = 43253
  security_policy_id = "AAAA_81230"
  api_endpoint_id    = 1
  action             = "alert"
}

