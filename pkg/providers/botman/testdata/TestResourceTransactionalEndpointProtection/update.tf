# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_botman_transactional_endpoint_protection" "test" {
  config_id = 43253
  transactional_endpoint_protection = jsonencode(
    {
      "testKey" : "updated_testValue3"
    }
  )
}