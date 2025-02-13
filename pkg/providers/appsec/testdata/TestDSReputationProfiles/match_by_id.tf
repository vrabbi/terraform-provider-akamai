# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_appsec_reputation_profiles" "test" {
  config_id             = 43253
  reputation_profile_id = 12345
}

